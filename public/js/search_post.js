const datas = [
  {
    no: 0,
    gender: "남성",
    age: 3,
    info: "이사람은 00한 사람입니다.",
    start_date: "19940102",
    end_date: "19950102",
    place: "제주",
    group_name: "11초등학교",
    story: "00한 옛날 친구를 찾습니다!",
    keyword: "긴머리,귤,축구",
  },
  {
    no: 1,
    gender: "남성",
    age: 12,
    info: "이사람은 00한 사람입니다.",
    start_date: "19940102",
    end_date: "19950102",
    place: "서울",
    group_name: "11초등학교",
    story: "00한 옛날 친구를 찾습니다!",
    keyword: "짧은머리,귤,농구",
  },
  {
    no: 3, //o !(따로빼주기)왼쪽상단에 박아주고
    gender: "남성", //o 그아래 한줄
    age: 29, //o
    info: "이사람은 00한 사람입니다.", //x
    start_date: "19940102", //o
    end_date: "19950102", //o 이거 2개 한줄
    place: "제주", //o
    group_name: "22초등학교", //o 이거 2개 한줄
    story: "00한 옛날 친구를 찾습니다!",
    keyword: "귤", //o #해시태그
  },
]


const contentsDiv = document.getElementById("contents")

const components = (posts) => posts.map((item) => {
  // const keywords = item.keyword.split(",").map((item) => `#${item}`)
  return `<article class='posts'>
      <div class='no'>No.${item.no}</div>
      <div class='who'>Who? ${item.age}세 ${item.gender === "M" ? "남자" : "여자"}</div>
      <div class='when'>When? ${item.start_date} ~ ${item.end_date}</div>
      <div class='where'>Where? ${item.place} ${item.group_name}</div>
      <div class='keyword'>${item.keywords}</div>
      <button class="article-button">글 확인</button>
    </article>`
});

// contentsDiv.innerHTML = `${components}`;

document.getElementsByClassName("form-control")[0].addEventListener('keypress', (e) => {
  console.log(e)
  if (e.key === "Enter") {
    searchByKeyword(e);
  }
});

const searchByKeyword = async (e) => {
  e.preventDefault();

  const keywordBox = document.getElementsByClassName("form-control")[0];
  const keyword = keywordBox.value;


  if (keyword.trim()) {

    const res = await fetch(`/api/posts/search/${keyword}`);
    const json = await res.json();

    const { posts } = json;

    if (posts?.length) {
      //TODO :: 리스트 보여주기
      console.log(posts);
      contentsDiv.innerHTML = components(posts);
    } else {
      alert("해당 키워드에 맞는 게시글이 없습니다.");
    }
  } else {
    keywordBox.value = "";
    alert("검색어를 입력해주세요.");
  }


}