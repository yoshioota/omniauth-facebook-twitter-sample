# coding: utf-8

=begin
# ローカル環境独自の設定値をここに入れることが出来ます。
# 使用する場合は zzz_local_settings.rb へリネームしてご利用下さい。
# ▼▼▼ 以下テンプレート ▼▼▼

# rails foot note
if defined?(Footnotes) && Rails.env.development?
  Footnotes.run!
  Footnotes::Filter.prefix = 'x-mine://open?file=%s&line=%d'
end

# better error
if defined?(BetterErrors) && Rails.env.development?
  BetterErrors.editor = 'x-mine://open?file=%{file}&line=%{line}'
end

# letter_opener
if Rails.env.development?
  ActionMailer::Base.delivery_method = :letter_opener
end

=end
