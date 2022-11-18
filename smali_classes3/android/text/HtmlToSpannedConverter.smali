.class Landroid/text/HtmlToSpannedConverter;
.super Ljava/lang/Object;
.source "Html.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/HtmlToSpannedConverter$Alignment;,
        Landroid/text/HtmlToSpannedConverter$Newline;,
        Landroid/text/HtmlToSpannedConverter$Heading;,
        Landroid/text/HtmlToSpannedConverter$Background;,
        Landroid/text/HtmlToSpannedConverter$Foreground;,
        Landroid/text/HtmlToSpannedConverter$Href;,
        Landroid/text/HtmlToSpannedConverter$Font;,
        Landroid/text/HtmlToSpannedConverter$Bullet;,
        Landroid/text/HtmlToSpannedConverter$Sub;,
        Landroid/text/HtmlToSpannedConverter$Super;,
        Landroid/text/HtmlToSpannedConverter$Blockquote;,
        Landroid/text/HtmlToSpannedConverter$Monospace;,
        Landroid/text/HtmlToSpannedConverter$Small;,
        Landroid/text/HtmlToSpannedConverter$Big;,
        Landroid/text/HtmlToSpannedConverter$Strikethrough;,
        Landroid/text/HtmlToSpannedConverter$Underline;,
        Landroid/text/HtmlToSpannedConverter$Italic;,
        Landroid/text/HtmlToSpannedConverter$Bold;
    }
.end annotation


# static fields
.field private static final blacklist HEADING_SIZES:[F

.field private static blacklist sBackgroundColorPattern:Ljava/util/regex/Pattern;

.field private static final blacklist sColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sForegroundColorPattern:Ljava/util/regex/Pattern;

.field private static blacklist sTextAlignPattern:Ljava/util/regex/Pattern;

.field private static blacklist sTextDecorationPattern:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist mFlags:I

.field private blacklist mImageGetter:Landroid/text/Html$ImageGetter;

.field private blacklist mReader:Lorg/xml/sax/XMLReader;

.field private blacklist mSource:Ljava/lang/String;

.field private blacklist mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private blacklist mTagHandler:Landroid/text/Html$TagHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 674
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->HEADING_SIZES:[F

    .line 696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    .line 697
    const v1, -0x565657

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "darkgray"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const v2, -0x7f7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "gray"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    const v3, -0x2c2c2d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "lightgray"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string v4, "darkgrey"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string/jumbo v1, "grey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string/jumbo v1, "lightgrey"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const v1, -0xff8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "green"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    return-void

    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fb33333    # 1.4f
        0x3fa66666    # 1.3f
        0x3f99999a    # 1.2f
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "imageGetter"    # Landroid/text/Html$ImageGetter;
    .param p3, "tagHandler"    # Landroid/text/Html$TagHandler;
    .param p4, "parser"    # Lorg/ccil/cowan/tagsoup/Parser;
    .param p5, "flags"    # I

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p1, p0, Landroid/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    .line 740
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 741
    iput-object p2, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    .line 742
    iput-object p3, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    .line 743
    iput-object p4, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    .line 744
    iput p5, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    .line 745
    return-void
.end method

.method private static blacklist appendNewlines(Landroid/text/Editable;I)V
    .locals 5
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "minNewline"    # I

    .line 951
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 953
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 954
    return-void

    .line 957
    :cond_0
    const/4 v1, 0x0

    .line 958
    .local v1, "existingNewlines":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 959
    add-int/lit8 v1, v1, 0x1

    .line 958
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 962
    .end local v2    # "i":I
    :cond_1
    move v2, v1

    .local v2, "j":I
    :goto_1
    if-ge v2, p1, :cond_2

    .line 963
    const-string v3, "\n"

    invoke-interface {p0, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 965
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private static blacklist end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "kind"    # Ljava/lang/Class;
    .param p2, "repl"    # Ljava/lang/Object;

    .line 1080
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1081
    .local v0, "len":I
    invoke-static {p0, p1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 1082
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1083
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1085
    :cond_0
    return-void
.end method

.method private static blacklist endA(Landroid/text/Editable;)V
    .locals 5
    .param p0, "text"    # Landroid/text/Editable;

    .line 1189
    const-class v0, Landroid/text/HtmlToSpannedConverter$Href;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Href;

    .line 1190
    .local v0, "h":Landroid/text/HtmlToSpannedConverter$Href;
    if-eqz v0, :cond_0

    .line 1191
    iget-object v1, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1192
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/style/URLSpan;

    iget-object v4, v0, Landroid/text/HtmlToSpannedConverter$Href;->mHref:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1195
    :cond_0
    return-void
.end method

.method private static blacklist endBlockElement(Landroid/text/Editable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;

    .line 991
    const-class v0, Landroid/text/HtmlToSpannedConverter$Newline;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Newline;

    .line 992
    .local v0, "n":Landroid/text/HtmlToSpannedConverter$Newline;
    if-eqz v0, :cond_0

    .line 993
    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Newline;->-$$Nest$fgetmNumNewlines(Landroid/text/HtmlToSpannedConverter$Newline;)I

    move-result v1

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->appendNewlines(Landroid/text/Editable;I)V

    .line 994
    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 997
    :cond_0
    const-class v1, Landroid/text/HtmlToSpannedConverter$Alignment;

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/HtmlToSpannedConverter$Alignment;

    .line 998
    .local v1, "a":Landroid/text/HtmlToSpannedConverter$Alignment;
    if-eqz v1, :cond_1

    .line 999
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/style/AlignmentSpan$Standard;

    invoke-static {v1}, Landroid/text/HtmlToSpannedConverter$Alignment;->-$$Nest$fgetmAlignment(Landroid/text/HtmlToSpannedConverter$Alignment;)Landroid/text/Layout$Alignment;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1001
    :cond_1
    return-void
.end method

.method private static blacklist endBlockquote(Landroid/text/Editable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;

    .line 1025
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    .line 1026
    const-class v0, Landroid/text/HtmlToSpannedConverter$Blockquote;

    new-instance v1, Landroid/text/style/QuoteSpan;

    invoke-direct {v1}, Landroid/text/style/QuoteSpan;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1027
    return-void
.end method

.method private static blacklist endCssStyle(Landroid/text/Editable;)V
    .locals 7
    .param p0, "text"    # Landroid/text/Editable;

    .line 1117
    const-class v0, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    .line 1118
    .local v0, "s":Landroid/text/HtmlToSpannedConverter$Strikethrough;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1119
    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1122
    :cond_0
    const-class v3, Landroid/text/HtmlToSpannedConverter$Background;

    invoke-static {p0, v3}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/HtmlToSpannedConverter$Background;

    .line 1123
    .local v3, "b":Landroid/text/HtmlToSpannedConverter$Background;
    if-eqz v3, :cond_1

    .line 1124
    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v3}, Landroid/text/HtmlToSpannedConverter$Background;->-$$Nest$fgetmBackgroundColor(Landroid/text/HtmlToSpannedConverter$Background;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aput-object v5, v4, v1

    invoke-static {p0, v3, v4}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1127
    :cond_1
    const-class v4, Landroid/text/HtmlToSpannedConverter$Foreground;

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/HtmlToSpannedConverter$Foreground;

    .line 1128
    .local v4, "f":Landroid/text/HtmlToSpannedConverter$Foreground;
    if-eqz v4, :cond_2

    .line 1129
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v4}, Landroid/text/HtmlToSpannedConverter$Foreground;->-$$Nest$fgetmForegroundColor(Landroid/text/HtmlToSpannedConverter$Foreground;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v5, v2, v1

    invoke-static {p0, v4, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1131
    :cond_2
    return-void
.end method

.method private static blacklist endFont(Landroid/text/Editable;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;

    .line 1171
    const-class v0, Landroid/text/HtmlToSpannedConverter$Font;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Font;

    .line 1172
    .local v0, "font":Landroid/text/HtmlToSpannedConverter$Font;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1173
    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/TypefaceSpan;

    iget-object v5, v0, Landroid/text/HtmlToSpannedConverter$Font;->mFace:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1176
    :cond_0
    const-class v3, Landroid/text/HtmlToSpannedConverter$Foreground;

    invoke-static {p0, v3}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/HtmlToSpannedConverter$Foreground;

    .line 1177
    .local v3, "foreground":Landroid/text/HtmlToSpannedConverter$Foreground;
    if-eqz v3, :cond_1

    .line 1178
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v3}, Landroid/text/HtmlToSpannedConverter$Foreground;->-$$Nest$fgetmForegroundColor(Landroid/text/HtmlToSpannedConverter$Foreground;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v4, v2, v1

    invoke-static {p0, v3, v2}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1181
    :cond_1
    return-void
.end method

.method private static blacklist endHeading(Landroid/text/Editable;)V
    .locals 8
    .param p0, "text"    # Landroid/text/Editable;

    .line 1037
    const-class v0, Landroid/text/HtmlToSpannedConverter$Heading;

    invoke-static {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/HtmlToSpannedConverter$Heading;

    .line 1038
    .local v0, "h":Landroid/text/HtmlToSpannedConverter$Heading;
    if-eqz v0, :cond_0

    .line 1039
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 1040
    .local v1, "application":Landroid/app/Application;
    nop

    .line 1041
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 1042
    .local v2, "fontWeightAdjustment":I
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    sget-object v6, Landroid/text/HtmlToSpannedConverter;->HEADING_SIZES:[F

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter$Heading;->-$$Nest$fgetmLevel(Landroid/text/HtmlToSpannedConverter$Heading;)I

    move-result v7

    aget v6, v6, v7

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    aput-object v5, v3, v4

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Landroid/text/style/StyleSpan;-><init>(II)V

    aput-object v4, v3, v5

    invoke-static {p0, v0, v3}, Landroid/text/HtmlToSpannedConverter;->setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 1046
    .end local v1    # "application":Landroid/app/Application;
    .end local v2    # "fontWeightAdjustment":I
    :cond_0
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    .line 1047
    return-void
.end method

.method private static blacklist endLi(Landroid/text/Editable;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;

    .line 1014
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    .line 1015
    invoke-static {p0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    .line 1016
    const-class v0, Landroid/text/HtmlToSpannedConverter$Bullet;

    new-instance v1, Landroid/text/style/BulletSpan;

    invoke-direct {v1}, Landroid/text/style/BulletSpan;-><init>()V

    invoke-static {p0, v0, v1}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1017
    return-void
.end method

.method private static blacklist getBackgroundColorPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 722
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 723
    const-string v0, "(?:\\s+|\\A)background(?:-color)?\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    .line 726
    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sBackgroundColorPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static blacklist getForegroundColorPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 714
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 715
    const-string v0, "(?:\\s+|\\A)color\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    .line 718
    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sForegroundColorPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private blacklist getHtmlColor(Ljava/lang/String;)I
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .line 1198
    iget v0, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1200
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sColorMap:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1201
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1210
    .end local v0    # "i":Ljava/lang/Integer;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 1212
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v1

    .line 1219
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_1
    invoke-static {p1, v1}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    .line 1220
    :catch_1
    move-exception v0

    .line 1221
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v1
.end method

.method private static blacklist getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1054
    .local p1, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1056
    .local v0, "objs":[Ljava/lang/Object;, "[TT;"
    array-length v1, v0

    if-nez v1, :cond_0

    .line 1057
    const/4 v1, 0x0

    return-object v1

    .line 1059
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private blacklist getMargin(I)I
    .locals 1
    .param p1, "flag"    # I

    .line 944
    iget v0, p0, Landroid/text/HtmlToSpannedConverter;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 945
    const/4 v0, 0x1

    return v0

    .line 947
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method private blacklist getMarginBlockquote()I
    .locals 1

    .line 934
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginDiv()I
    .locals 1

    .line 930
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginHeading()I
    .locals 1

    .line 918
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginList()I
    .locals 1

    .line 926
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginListItem()I
    .locals 1

    .line 922
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private blacklist getMarginParagraph()I
    .locals 1

    .line 914
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/HtmlToSpannedConverter;->getMargin(I)I

    move-result v0

    return v0
.end method

.method private static blacklist getTextAlignPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 707
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 708
    const-string v0, "(?:\\s+|\\A)text-align\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    .line 710
    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextAlignPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static blacklist getTextDecorationPattern()Ljava/util/regex/Pattern;
    .locals 1

    .line 730
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 731
    const-string v0, "(?:\\s+|\\A)text-decoration\\s*:\\s*(\\S*)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    .line 734
    :cond_0
    sget-object v0, Landroid/text/HtmlToSpannedConverter;->sTextDecorationPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private static blacklist handleBr(Landroid/text/Editable;)V
    .locals 1
    .param p0, "text"    # Landroid/text/Editable;

    .line 1004
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 1005
    return-void
.end method

.method private blacklist handleEndTag(Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 847
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->handleBr(Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 849
    :cond_0
    const-string/jumbo v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    .line 851
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 852
    :cond_1
    const-string/jumbo v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 853
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 854
    :cond_2
    const-string/jumbo v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 855
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endLi(Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 856
    :cond_3
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 857
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockElement(Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 858
    :cond_4
    const-string/jumbo v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 859
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endCssStyle(Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 860
    :cond_5
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 861
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 862
    .local v0, "application":Landroid/app/Application;
    nop

    .line 863
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 864
    .local v2, "fontWeightAdjustment":I
    iget-object v3, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v4, Landroid/text/HtmlToSpannedConverter$Bold;

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v1, v2}, Landroid/text/style/StyleSpan;-><init>(II)V

    invoke-static {v3, v4, v5}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 866
    .end local v0    # "application":Landroid/app/Application;
    .end local v2    # "fontWeightAdjustment":I
    goto/16 :goto_0

    :cond_6
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 867
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 868
    .restart local v0    # "application":Landroid/app/Application;
    nop

    .line 869
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 870
    .restart local v2    # "fontWeightAdjustment":I
    iget-object v3, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v4, Landroid/text/HtmlToSpannedConverter$Bold;

    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v1, v2}, Landroid/text/style/StyleSpan;-><init>(II)V

    invoke-static {v3, v4, v5}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 872
    .end local v0    # "application":Landroid/app/Application;
    .end local v2    # "fontWeightAdjustment":I
    goto/16 :goto_0

    :cond_7
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_8

    .line 873
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 874
    :cond_8
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 875
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 876
    :cond_9
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 877
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 878
    :cond_a
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 879
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Italic;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v1, v3}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 880
    :cond_b
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 881
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Big;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const/high16 v3, 0x3fa00000    # 1.25f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 882
    :cond_c
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 883
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Small;

    new-instance v2, Landroid/text/style/RelativeSizeSpan;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 884
    :cond_d
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 885
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endFont(Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 886
    :cond_e
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 887
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endBlockquote(Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 888
    :cond_f
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 889
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Monospace;

    new-instance v2, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v3, "monospace"

    invoke-direct {v2, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 890
    :cond_10
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 891
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endA(Landroid/text/Editable;)V

    goto/16 :goto_0

    .line 892
    :cond_11
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 893
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Underline;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 894
    :cond_12
    const-string v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 895
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 896
    :cond_13
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 897
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 898
    :cond_14
    const-string/jumbo v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 899
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 900
    :cond_15
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 901
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Super;

    new-instance v2, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SuperscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 902
    :cond_16
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 903
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Landroid/text/HtmlToSpannedConverter$Sub;

    new-instance v2, Landroid/text/style/SubscriptSpan;

    invoke-direct {v2}, Landroid/text/style/SubscriptSpan;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/text/HtmlToSpannedConverter;->end(Landroid/text/Editable;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 904
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_18

    .line 905
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v2, 0x68

    if-ne v0, v2, :cond_18

    .line 906
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    if-lt v0, v2, :cond_18

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x36

    if-gt v0, v1, :cond_18

    .line 907
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/HtmlToSpannedConverter;->endHeading(Landroid/text/Editable;)V

    goto :goto_0

    .line 908
    :cond_18
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    if-eqz v0, :cond_19

    .line 909
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v3, p1, v1, v2}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    .line 911
    :cond_19
    :goto_0
    return-void
.end method

.method private blacklist handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 785
    const-string v0, "br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 788
    :cond_0
    const-string/jumbo v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginParagraph()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    .line 790
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 791
    :cond_1
    const-string/jumbo v0, "ul"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 792
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginList()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto/16 :goto_0

    .line 793
    :cond_2
    const-string/jumbo v0, "li"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 794
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startLi(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 795
    :cond_3
    const-string v0, "div"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 796
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginDiv()I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto/16 :goto_0

    .line 797
    :cond_4
    const-string/jumbo v0, "span"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 798
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 799
    :cond_5
    const-string/jumbo v0, "strong"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 800
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Bold;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter$Bold-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 801
    :cond_6
    const-string v0, "b"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 802
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Bold;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Bold;-><init>(Landroid/text/HtmlToSpannedConverter$Bold-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 803
    :cond_7
    const-string v0, "em"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 804
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 805
    :cond_8
    const-string v0, "cite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 806
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 807
    :cond_9
    const-string v0, "dfn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 808
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 809
    :cond_a
    const-string/jumbo v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 810
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Italic;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Italic;-><init>(Landroid/text/HtmlToSpannedConverter$Italic-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 811
    :cond_b
    const-string v0, "big"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 812
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Big;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Big;-><init>(Landroid/text/HtmlToSpannedConverter$Big-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 813
    :cond_c
    const-string/jumbo v0, "small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 814
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Small;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Small;-><init>(Landroid/text/HtmlToSpannedConverter$Small-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 815
    :cond_d
    const-string v0, "font"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 816
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startFont(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 817
    :cond_e
    const-string v0, "blockquote"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 818
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Landroid/text/HtmlToSpannedConverter;->startBlockquote(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 819
    :cond_f
    const-string/jumbo v0, "tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 820
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Monospace;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Monospace;-><init>(Landroid/text/HtmlToSpannedConverter$Monospace-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 821
    :cond_10
    const-string v0, "a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 822
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, p2}, Landroid/text/HtmlToSpannedConverter;->startA(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 823
    :cond_11
    const-string/jumbo v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 824
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Underline;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Underline;-><init>(Landroid/text/HtmlToSpannedConverter$Underline-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 825
    :cond_12
    const-string v0, "del"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 826
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 827
    :cond_13
    const-string/jumbo v0, "s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 828
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 829
    :cond_14
    const-string/jumbo v0, "strike"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 830
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 831
    :cond_15
    const-string/jumbo v0, "sup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 832
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Super;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Super;-><init>(Landroid/text/HtmlToSpannedConverter$Super-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 833
    :cond_16
    const-string/jumbo v0, "sub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 834
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/HtmlToSpannedConverter$Sub;

    invoke-direct {v2, v1}, Landroid/text/HtmlToSpannedConverter$Sub;-><init>(Landroid/text/HtmlToSpannedConverter$Sub-IA;)V

    invoke-static {v0, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 835
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    .line 836
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v1, 0x68

    if-ne v0, v1, :cond_18

    .line 837
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-lt v0, v1, :cond_18

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x36

    if-gt v0, v3, :cond_18

    .line 838
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v1

    invoke-direct {p0, v0, p2, v2}, Landroid/text/HtmlToSpannedConverter;->startHeading(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    goto :goto_0

    .line 839
    :cond_18
    const-string/jumbo v0, "img"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 840
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mImageGetter:Landroid/text/Html$ImageGetter;

    invoke-static {v0, p2, v1}, Landroid/text/HtmlToSpannedConverter;->startImg(Landroid/text/Editable;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V

    goto :goto_0

    .line 841
    :cond_19
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mTagHandler:Landroid/text/Html$TagHandler;

    if-eqz v0, :cond_1a

    .line 842
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, v2, p1, v1, v3}, Landroid/text/Html$TagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V

    .line 844
    :cond_1a
    :goto_0
    return-void
.end method

.method private static varargs blacklist setSpanFromMark(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "mark"    # Ljava/lang/Object;
    .param p2, "spans"    # [Ljava/lang/Object;

    .line 1064
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1065
    .local v0, "where":I
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1066
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 1067
    .local v1, "len":I
    if-eq v0, v1, :cond_0

    .line 1068
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 1069
    .local v4, "span":Ljava/lang/Object;
    const/16 v5, 0x21

    invoke-interface {p0, v4, v0, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1068
    .end local v4    # "span":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1072
    :cond_0
    return-void
.end method

.method private static blacklist start(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "mark"    # Ljava/lang/Object;

    .line 1075
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 1076
    .local v0, "len":I
    const/16 v1, 0x11

    invoke-interface {p0, p1, v0, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1077
    return-void
.end method

.method private static blacklist startA(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1184
    const-string v0, ""

    const-string/jumbo v1, "href"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "href":Ljava/lang/String;
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Href;

    invoke-direct {v1, v0}, Landroid/text/HtmlToSpannedConverter$Href;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1186
    return-void
.end method

.method private static blacklist startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "margin"    # I

    .line 968
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 969
    .local v0, "len":I
    if-lez p2, :cond_0

    .line 970
    invoke-static {p0, p2}, Landroid/text/HtmlToSpannedConverter;->appendNewlines(Landroid/text/Editable;I)V

    .line 971
    new-instance v1, Landroid/text/HtmlToSpannedConverter$Newline;

    invoke-direct {v1, p2}, Landroid/text/HtmlToSpannedConverter$Newline;-><init>(I)V

    invoke-static {p0, v1}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 974
    :cond_0
    const-string v1, ""

    const-string/jumbo v2, "style"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "style":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 976
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getTextAlignPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 977
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 978
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 979
    .local v3, "alignment":Ljava/lang/String;
    const-string/jumbo v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 980
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 981
    :cond_1
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 982
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    goto :goto_0

    .line 983
    :cond_2
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 984
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Alignment;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-direct {v4, v5}, Landroid/text/HtmlToSpannedConverter$Alignment;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-static {p0, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 988
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "alignment":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method private blacklist startBlockquote(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1020
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginBlockquote()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    .line 1021
    new-instance v0, Landroid/text/HtmlToSpannedConverter$Blockquote;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/HtmlToSpannedConverter$Blockquote;-><init>(Landroid/text/HtmlToSpannedConverter$Blockquote-IA;)V

    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1022
    return-void
.end method

.method private blacklist startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1088
    const-string v0, ""

    const-string/jumbo v1, "style"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, "style":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1090
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getForegroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1091
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/high16 v3, -0x1000000

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    .line 1092
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v2

    .line 1093
    .local v2, "c":I
    if-eq v2, v4, :cond_0

    .line 1094
    new-instance v6, Landroid/text/HtmlToSpannedConverter$Foreground;

    or-int v7, v2, v3

    invoke-direct {v6, v7}, Landroid/text/HtmlToSpannedConverter$Foreground;-><init>(I)V

    invoke-static {p1, v6}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1098
    .end local v2    # "c":I
    :cond_0
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getBackgroundColorPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1099
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1100
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v2

    .line 1101
    .restart local v2    # "c":I
    if-eq v2, v4, :cond_1

    .line 1102
    new-instance v4, Landroid/text/HtmlToSpannedConverter$Background;

    or-int/2addr v3, v2

    invoke-direct {v4, v3}, Landroid/text/HtmlToSpannedConverter$Background;-><init>(I)V

    invoke-static {p1, v4}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1106
    .end local v2    # "c":I
    :cond_1
    invoke-static {}, Landroid/text/HtmlToSpannedConverter;->getTextDecorationPattern()Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1107
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1108
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1109
    .local v2, "textDecoration":Ljava/lang/String;
    const-string/jumbo v3, "line-through"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1110
    new-instance v3, Landroid/text/HtmlToSpannedConverter$Strikethrough;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/text/HtmlToSpannedConverter$Strikethrough;-><init>(Landroid/text/HtmlToSpannedConverter$Strikethrough-IA;)V

    invoke-static {p1, v3}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1114
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "textDecoration":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private blacklist startFont(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1155
    const-string v0, ""

    const-string v1, "color"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, "color":Ljava/lang/String;
    const-string v2, "face"

    invoke-interface {p2, v0, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "face":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1159
    invoke-direct {p0, v1}, Landroid/text/HtmlToSpannedConverter;->getHtmlColor(Ljava/lang/String;)I

    move-result v2

    .line 1160
    .local v2, "c":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1161
    new-instance v3, Landroid/text/HtmlToSpannedConverter$Foreground;

    const/high16 v4, -0x1000000

    or-int/2addr v4, v2

    invoke-direct {v3, v4}, Landroid/text/HtmlToSpannedConverter$Foreground;-><init>(I)V

    invoke-static {p1, v3}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1165
    .end local v2    # "c":I
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1166
    new-instance v2, Landroid/text/HtmlToSpannedConverter$Font;

    invoke-direct {v2, v0}, Landroid/text/HtmlToSpannedConverter$Font;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1168
    :cond_1
    return-void
.end method

.method private blacklist startHeading(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V
    .locals 1
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;
    .param p3, "level"    # I

    .line 1030
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginHeading()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    .line 1031
    new-instance v0, Landroid/text/HtmlToSpannedConverter$Heading;

    invoke-direct {v0, p3}, Landroid/text/HtmlToSpannedConverter$Heading;-><init>(I)V

    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1032
    return-void
.end method

.method private static blacklist startImg(Landroid/text/Editable;Lorg/xml/sax/Attributes;Landroid/text/Html$ImageGetter;)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;
    .param p2, "img"    # Landroid/text/Html$ImageGetter;

    .line 1134
    const-string v0, ""

    const-string/jumbo v1, "src"

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, "src":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1137
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    .line 1138
    invoke-interface {p2, v0}, Landroid/text/Html$ImageGetter;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1141
    :cond_0
    if-nez v1, :cond_1

    .line 1142
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108091f

    .line 1143
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1144
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1147
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    .line 1148
    .local v2, "len":I
    const-string/jumbo v3, "\ufffc"

    invoke-interface {p0, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1150
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-interface {p0, v3, v2, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1152
    return-void
.end method

.method private blacklist startLi(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "text"    # Landroid/text/Editable;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 1008
    invoke-direct {p0}, Landroid/text/HtmlToSpannedConverter;->getMarginListItem()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/text/HtmlToSpannedConverter;->startBlockElement(Landroid/text/Editable;Lorg/xml/sax/Attributes;I)V

    .line 1009
    new-instance v0, Landroid/text/HtmlToSpannedConverter$Bullet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/HtmlToSpannedConverter$Bullet;-><init>(Landroid/text/HtmlToSpannedConverter$Bullet-IA;)V

    invoke-static {p1, v0}, Landroid/text/HtmlToSpannedConverter;->start(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 1010
    invoke-direct {p0, p1, p2}, Landroid/text/HtmlToSpannedConverter;->startCssStyle(Landroid/text/Editable;Lorg/xml/sax/Attributes;)V

    .line 1011
    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .locals 8
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_5

    .line 1259
    add-int v2, v1, p2

    aget-char v2, p1, v2

    .line 1261
    .local v2, "c":C
    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 1281
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1263
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 1265
    .local v5, "len":I
    if-nez v5, :cond_3

    .line 1266
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 1268
    if-nez v5, :cond_2

    .line 1269
    const/16 v6, 0xa

    .local v6, "pred":C
    goto :goto_2

    .line 1271
    .end local v6    # "pred":C
    :cond_2
    iget-object v6, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    .restart local v6    # "pred":C
    goto :goto_2

    .line 1274
    .end local v6    # "pred":C
    :cond_3
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    .line 1277
    .restart local v6    # "pred":C
    :goto_2
    if-eq v6, v4, :cond_4

    if-eq v6, v3, :cond_4

    .line 1278
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1280
    .end local v5    # "len":I
    .end local v6    # "pred":C
    :cond_4
    nop

    .line 1258
    .end local v2    # "c":C
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1285
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1286
    return-void
.end method

.method public blacklist convert()Landroid/text/Spanned;
    .locals 7

    .line 749
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 751
    :try_start_0
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mReader:Lorg/xml/sax/XMLReader;

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Landroid/text/HtmlToSpannedConverter;->mSource:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    nop

    .line 761
    iget-object v0, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 762
    .local v0, "obj":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 763
    iget-object v2, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 764
    .local v2, "start":I
    iget-object v3, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 767
    .local v3, "end":I
    add-int/lit8 v4, v3, -0x2

    if-ltz v4, :cond_0

    .line 768
    iget-object v4, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v3, -0x2

    .line 769
    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 770
    add-int/lit8 v3, v3, -0x1

    .line 774
    :cond_0
    if-ne v3, v2, :cond_1

    .line 775
    iget-object v4, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 777
    :cond_1
    iget-object v4, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    aget-object v5, v0, v1

    const/16 v6, 0x33

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 762
    .end local v2    # "start":I
    .end local v3    # "end":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 781
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroid/text/HtmlToSpannedConverter;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v1

    .line 755
    .end local v0    # "obj":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 752
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v0

    .line 754
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1233
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1247
    invoke-direct {p0, p2}, Landroid/text/HtmlToSpannedConverter;->handleEndTag(Ljava/lang/String;)V

    .line 1248
    return-void
.end method

.method public whitelist test-api endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1239
    return-void
.end method

.method public whitelist test-api ignorableWhitespace([CII)V
    .locals 0
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1289
    return-void
.end method

.method public whitelist test-api processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1292
    return-void
.end method

.method public whitelist test-api setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .line 1227
    return-void
.end method

.method public whitelist test-api skippedEntity(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1295
    return-void
.end method

.method public whitelist test-api startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1230
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1243
    invoke-direct {p0, p2, p4}, Landroid/text/HtmlToSpannedConverter;->handleStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1244
    return-void
.end method

.method public whitelist test-api startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1236
    return-void
.end method
