#' Add social buttons to share a page
#'
#' Customize social buttons available for sharing of pages
#'
#' @param link the link to share on social media
#' @param image the image link to share on social media
#' @param text the text to share on social media
#' @param position of buttons e.g "left","right","bottom","inline"
#' @param text.color text color e.g black
#' @param facebook share on Facebook
#' @param linkedin share on Linkedin
#' @param twitter share on Twitter
#' @param tumblr share on Tumblr
#' @param pinterest share on Pinterest
#' @param instagram share on Instagram
#' @param whatsapp share on Whatsapp
#' @param reddit share on Reddit
#' @param blogger share on blogger
#' @param weibo share on weibo
#' @param tiktok share on tiktok
#' @param vk share on VK or VKontakte
#' @param telegram share on Telegram
#' @param youtube share on Youtube
#' @param visit.us share on custom link
#'
#' @section Examples for r2social:
#' More examples and demo pages are located at this link -
#' \url{https://r2social.obi.obianom.com}.
#'
#' @return Share link button via social media platforms
#'
#' @examples
#'
#' shareButton(link = "http://rpkg.net", position = "left")
#' shareButton(link = "http://obianom.com", position = "right")
#' shareButton(link = "http://66pharm.com", position = "inline")
#'
#' @export

shareButton <- function(link,
                        image = NULL,
                        text = NULL,
                        position = c("left", "right", "inline"),
                        text.color = "black",
                        facebook = TRUE,
                        linkedin = TRUE,
                        twitter = TRUE,
                        tumblr = FALSE,
                        pinterest = FALSE,
                        whatsapp = FALSE,
                        reddit = TRUE,
                        instagram = FALSE,
                        blogger = FALSE,
                        weibo = TRUE,
                        tiktok = FALSE,
                        vk = FALSE,
                        telegram = FALSE,
                        youtube = FALSE,
                        visit.us = FALSE) {
  # fetch selected position
  position <- match.arg(position)

  # fetch button by type
  socialButtons(link = link,
    type = "share",
    image = image,
    text = text,
    position = position,
    text.color = text.color,
    facebook = facebook,
    linkedin = linkedin,
    twitter = twitter,
    tumblr = tumblr,
    pinterest = pinterest,
    whatsapp = whatsapp,
    reddit = reddit,
    instagram = instagram,
    blogger = blogger,
    weibo = weibo,
    tiktok = tiktok,
    vk = vk,
    visit.us = visit.us,
    telegram = telegram,
    youtube = youtube
  )
}
