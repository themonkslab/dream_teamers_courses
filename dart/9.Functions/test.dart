/* void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = [];
  for (var person in people) {
     peopleWithTitle.add('Dr. $person');
  }
  print( peopleWithTitle);
} */

/* void main() {
  const people = ['Jack', 'Justin', 'Martin', 'Eugenio'];
  final  peopleWithTitle = people.map((person)=> 'Dr. $person');
  print( peopleWithTitle);
} */

/* void main() {
  const list = [1, 2, 3];
  print(transform(list, (x) => x * 2));
  print(transform(list, (x) => x * 10));
  print(transform(list, (x) => x / 2)); // 👁️ a problem arises here
}

List<int> transform(List<int> list, int Function(int) operation) {
  return list.map(operation).toList();
} */
/* 
void main() {
  const list = [1, 2, 3, 2, 4, 2, 5, 2, 6];
  final even = list.where((value) => value % 2 == 0);
  print(even);
  final firstTwoElement = list.firstWhere((value) => value % 2 == 0);
  print(firstTwoElement);
} */


/* void main () {
  const airpodsArticle = '''
Apple's AirPods lineup has grown more complex over the years, and rumors pointed to a middle-tier earbud that would take on characteristics of the AirPods Pro at a much lower price. Rumors about the supposed "AirPods Pro Lite" have stopped, and Apple released the third-generation AirPods at \$179 in late 2021, which may be the rumored earbuds.
Rumors suggested that Apple was prepared to release a new set of AirPods in the middle of the lineup. While it wasn't a final product name, these rumored earbuds were referred to as the 
AirPods, AirPods with wireless charging case, and AirPods Pro already offer a clear upgrade path
The third-generation AirPods appear to be the rumored "AirPods Pro Lite," but the rumor mill hasn't directly acknowledged this possibility as of yet. The new AirPods are improved second-generation AirPods with a design similar to AirPods Pro but don't have ANC features or changeable ear tips.
It is possible that another set of earbuds are in development that feature the below rumors, however, it is more likely that they do not exist given the third-generation AirPods' existence. Apple tends to develop multiple versions of a product and only one makes it out, so while this rumored product may have existed at some point, it seems the third-generation AirPods won out.
Rumors about "AirPods Pro Lite"
As with all unreleased Apple products, it is likely this product falls into one of three camps: it doesn't exist, it exists and is never announced, or it exists and is imminent. Very little concrete information is available, and all that is known is a rumored name leaked from the supply chain.
A rumor from avid leaker Jon Prosser in April 2020 placed a release of new AirPods products sometime in October, though that didn't come to pass. Apple released the over-the-ear AirPods Max in December with no indication of other AirPods refreshes coming.
Reports from The Elec, a South Korean material supplier with a weak rumor history, suggest that the new earbuds would start shipping in early 2021 and fall into the \$199 price point. They were apparently ready at the end of 2019, but the popularity of the more expensive AirPods Pro pushed the release back.
As we got further into 2021 it was apparent they either never existed or got scrapped last second in favor of other products. Again, there is always the possibility the "AirPods Pro Lite" is a different product that has already been released, like the third-generation AirPods.
Potential Lineup Changes
If these are an AirPods product, then a change in the lineup for a more obvious upgrade path would be in order. Right now, wireless charging is a premium in the line, and as Apple has continued production of the wireless charging case, it may have cheapened the cost of including the more versatile case.

There is not much room in the AirPods lineup for the “AirPods Pro Lite.”
With the entry of third-generation AirPods, adding yet another product between AirPods Pro and third-generation AirPods is unlikely. The \$179 price point fits as a perfect price point between the now discounted \$129 AirPods and \$249 AirPods Pro.
Possible Beats Product
Another possibility is the term is likely a placeholder, and may not even be AirPods at all. The rumored cheaper AirPods Pro could be a Beats by Dre product as well, and it's also possible the rumors were referring to Beats Fit Pro or other earbuds in the lineup.

Beats Solo Pro was the first to receive Apple’s new H1 chip, and more will follow.
Supply chain observers never get the full picture when looking at a specific part or company, so Apple could easily be developing new Beats products that are similar to AirPods and use a codename to reflect that.
"AirPods Pro Lite" Pricing
A new earbud falling between the one-size-fits-all AirPods and the premium AirPods Pro seems unlikely, as the two device sets are already very close in price and have an obvious upgrade path. If you are in the market for totally wireless earbuds, it likely won't benefit you to wait for the unannounced "AirPods Pro Lite." Check out AppleInsider's Price Guide for deals on AirPods.
''';

final GetSentencesWithPrice = createListOfSentences(airpodsArticle).where((element) => element.contains('price') == true);
print (GetSentencesWithPrice);

}

List <String> createListOfSentences (String text) {
final listOfSentences = text.split('.');
return listOfSentences;
}

 */

void main() {
  const list = [1, 2, 3, 4];
  final sum = list.reduce((value, element) => value + element);
  print(sum); // 10
  // value:   1 => 3 => 6
  // element: 2 => 3 => 4
}