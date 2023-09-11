module PluralizeHelper
  def product_pluralize(word, count = 0)
    Product::IRREGULAR_PLURAL.key?(word) ? Product::IRREGULAR_PLURAL[word] : word.pluralize(count)
  end
end
