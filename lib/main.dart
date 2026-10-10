<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>HAYBAT ADS AI PRO</title>

<style>
* {
    box-sizing: border-box;
}

body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #0b0b14;
    color: white;
}

header {
    padding: 22px;
    text-align: center;
    background: linear-gradient(135deg, #17132d, #392078);
    border-bottom: 1px solid #6545ad;
}

header h1 {
    margin: 0;
    color: #b69aff;
}

header p {
    color: #ddd;
}

.container {
    max-width: 650px;
    margin: 25px auto;
    padding: 20px;
}

.card {
    background: #151522;
    border: 1px solid #292940;
    border-radius: 18px;
    padding: 22px;
    margin-bottom: 20px;
}

h2 {
    color: #b69aff;
}

label {
    display: block;
    margin: 16px 0 8px;
}

input, textarea, select {
    width: 100%;
    padding: 13px;
    border-radius: 10px;
    border: 1px solid #373750;
    background: #0d0d18;
    color: white;
    font-size: 15px;
}

textarea {
    min-height: 100px;
    resize: vertical;
}

button {
    width: 100%;
    padding: 14px;
    margin-top: 18px;
    border: none;
    border-radius: 10px;
    background: linear-gradient(90deg, #7042d8, #a34cff);
    color: white;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
}

button:hover {
    opacity: 0.9;
}

#result {
    white-space: pre-wrap;
    line-height: 1.9;
    margin-top: 15px;
}

footer {
    text-align: center;
    padding: 25px;
    color: #999;
}
</style>
</head>

<body>

<header>
    <h1>HAYBAT ADS AI PRO</h1>
    <p>استوديو صناعة الإعلانات الذكية</p>
</header>

<div class="container">

    <div class="card">
        <h2>🎬 إنشاء إعلان جديد</h2>

        <label>اسم المنتج</label>
        <input id="product" placeholder="مثلاً: عطر فاخر">

        <label>وصف المنتج</label>
        <textarea id="description"
        placeholder="اكتب تفاصيل المنتج ومميزاته"></textarea>

        <label>نوع الإعلان</label>
        <select id="type">
            <option>إعلان سينمائي</option>
            <option>إعلان مطعم</option>
            <option>إعلان عطور</option>
            <option>إعلان ملابس</option>
            <option>إعلان إلكترونيات</option>
            <option>إعلان عقارات</option>
        </select>

        <label>مدة الفيديو</label>
        <select id="duration">
            <option value="8">8 ثوانٍ</option>
            <option value="15">15 ثانية</option>
            <option value="30">30 ثانية</option>
            <option value="60">60 ثانية</option>
        </select>

        <label>نسبة الفيديو</label>
        <select id="ratio">
            <option value="9:16">عمودي - تيك توك وريلز</option>
            <option value="16:9">أفقي - يوتيوب</option>
            <option value="1:1">مربع - منشورات</option>
        </select>

        <label>صورة المنتج</label>
        <input type="file" id="image" accept="image/*">

        <button onclick="createAd()">إنشاء مخطط الإعلان</button>

        <div id="result"></div>
    </div>

</div>

<footer>
    صُنع بكل حب بواسطة هيبت ❤️
</footer>

<script>
function createAd() {
    const product =
        document.getElementById("product").value.trim();

    const description =
        document.getElementById("description").value.trim();

    const type =
        document.getElementById("type").value;

    const duration =
        document.getElementById("duration").value;

    const ratio =
        document.getElementById("ratio").value;

    const image =
        document.getElementById("image").files[0];

    const result = document.getElementById("result");

    if (!product || !description) {
        result.textContent =
            "يرجى كتابة اسم المنتج ووصفه أولاً.";
        return;
    }

    result.textContent =
`تم إعداد مخطط إعلانك بنجاح!

اسم المنتج: ${product}
نوع الإعلان: ${type}
المدة: ${duration} ثانية
نسبة الفيديو: ${ratio}
الصورة المرفوعة: ${image ? image.name : "لم ترفع صورة"}

وصف الإعلان:
${description}

ملاحظة: هذه معاينة نصية فقط.
لتوليد فيديو حقيقي، يجب ربط التطبيق بخدمة ذكاء اصطناعي لتوليد الفيديو.`;

}
</script>

</body>
</html>