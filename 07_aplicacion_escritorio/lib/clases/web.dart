class Web {
  Web({
    this.company,
    this.url,
    this.text,
  });

  String company;
  String url;
  String text;

  factory Web.fromJson(Map<String, dynamic> json) => Web(
        company: json['company'],
        url: json['url'],
        text: json['text'],
      );

  Map<String, dynamic> toJson() => {
        'company': company,
        'url': url,
        'text': text,
      };
}
