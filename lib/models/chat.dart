class Chat {
  String heading;
  String message;

  Chat({required this.heading, required this.message});

  static List<Chat> chats = [
    Chat(heading: 'General thread', message: '15 Unread message'),
    Chat(heading: '(Live) Anyone enthu for trading league', message: '15 Unread message'),
    Chat(heading: '(Live) Anyone enthu for trading league', message: '15 Unread message'),
  ];
}
