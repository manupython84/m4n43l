import telebot
import openai

bot = telebot.TeleBot("6069066113:AAGuEZzw1z44Z-z34rUYmMO_65Za7FWU9FQ")
openai.api_key = "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"

@bot.message_handler(content_types=["text"])
def handle_text(message):
    response = openai.Completion.create(
        engine="text-davinci-003",
        prompt=f"{message.text}",
        max_tokens=1024,
        n=1,
        stop=None,
        temperature=0.5,
    )
    bot.send_message(message.chat.id, response.choices[0].text)

bot.polling()
