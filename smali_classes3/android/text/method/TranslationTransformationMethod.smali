.class public Landroid/text/method/TranslationTransformationMethod;
.super Ljava/lang/Object;
.source "TranslationTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final blacklist PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationTransformationMethod"


# instance fields
.field private blacklist mAllowLengthChanges:Z

.field private blacklist mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

.field private final blacklist mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/translation/ViewTranslationResponse;Landroid/text/method/TransformationMethod;)V
    .locals 0
    .param p1, "response"    # Landroid/view/translation/ViewTranslationResponse;
    .param p2, "method"    # Landroid/text/method/TransformationMethod;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    .line 54
    iput-object p2, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    .line 55
    return-void
.end method

.method private blacklist isWhitespace(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 108
    sget-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .line 62
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    .line 74
    iget-boolean v0, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    if-nez v0, :cond_0

    .line 75
    const-string v0, "TranslationTransformationMethod"

    const-string v1, "Caller did not enable length changes; not transforming to translated text"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-object p1

    .line 78
    :cond_0
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    const-string v1, "android:text"

    invoke-virtual {v0, v1}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v0

    .line 81
    .local v0, "value":Landroid/view/translation/TranslationResponseValue;
    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getStatusCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "translatedText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 84
    .end local v1    # "translatedText":Ljava/lang/CharSequence;
    :cond_1
    const-string v1, ""

    .line 87
    .restart local v1    # "translatedText":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/text/method/TranslationTransformationMethod;->isWhitespace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    return-object v1

    .line 88
    :cond_3
    :goto_1
    return-object p1
.end method

.method public blacklist getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    return-object v0
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 100
    return-void
.end method

.method public blacklist setLengthChangesAllowed(Z)V
    .locals 0
    .param p1, "allowLengthChanges"    # Z

    .line 104
    iput-boolean p1, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    .line 105
    return-void
.end method
