package com.mytour.web.review;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.twitter.penguin.korean.TwitterKoreanProcessorJava;
import com.twitter.penguin.korean.tokenizer.KoreanTokenizer;

import scala.collection.Seq;

@Service
public class WordCloudServiceImpl implements WordCloudService {
	@Autowired
	ReviewCrawling reviewCrawling;

	@Override
	public List<Map> extractortwit() {

		String text = reviewCrawling.crawlingurl().toString();
		CharSequence normalized = TwitterKoreanProcessorJava.normalize(text);
		Seq<KoreanTokenizer.KoreanToken> tokens = TwitterKoreanProcessorJava.tokenize(normalized);
		tokens = TwitterKoreanProcessorJava.stem(tokens);
		List<String> javaParsed = TwitterKoreanProcessorJava.tokensToJavaStringList(tokens);

		Set<String> wordSet = new HashSet<String>();
		Map<String, Integer> wordCnt = new HashMap<String, Integer>();
		for (String s : javaParsed) {
			if (s.contains(".") || s.equals("?,") || s.equals("!") || s.contains(",") || s.equals("!,")|| s.equals("]")
					|| s.contains("다") || s.contains("고") || s.equals("에서") || s.equals("으로") || s.equals("시설")
					|| s.equals("도시") || s.equals("가이드라인") || s.contains("’") || s.equals("까지") || s.equals("시민")
					|| s.equals("모집") || s.equals("지원") || s.equals("함께") || s.contains("서울") || s.equals("부터")
					|| s.equals("여기") || s.equals("어디") || s.equals("오래") || s.equals("일대"))
				continue;    
			if (s.length() > 1) {
				if (wordSet.contains(s)) {
					wordCnt.put(s, 1 + wordCnt.get(s));
				} else if (wordSet.isEmpty()) {
					wordCnt.put(s, 1);
				} else {
					wordCnt.put(s, 1);
				}
				wordSet.add(s);
			}
		}

		List<Map> list = new ArrayList();
		for (String temp : wordSet) {
			if (wordCnt.get(temp) > 2 && wordCnt.get(temp) < 20) {
				Map<String, Object> map = new LinkedHashMap<String, Object>();
				map.put("key", temp);
				map.put("cnt", wordCnt.get(temp));
				list.add(map);
			}
		}
		return list;
	}

}