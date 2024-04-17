package models

type MediaType string

const (
	Artist MediaType = "artist"
)

type Media struct {
	ID    string `json:"id"`
	Title string `json:"title"`
	SubTitle string `json:"sub_title"`
	Type  MediaType `json:"type"`
	Images []Image `json:"images"`
}