.class final Landroid/widget/Editor$SuggestionInfo;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuggestionInfo"
.end annotation


# instance fields
.field greylist-max-o mSuggestionEnd:I

.field greylist-max-o mSuggestionIndex:I

.field final greylist-max-o mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

.field greylist-max-o mSuggestionStart:I

.field final greylist-max-o mText:Landroid/text/SpannableStringBuilder;


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 3748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3753
    new-instance v0, Landroid/widget/Editor$SuggestionSpanInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>(Landroid/widget/Editor$SuggestionSpanInfo-IA;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 3758
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor$SuggestionInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SuggestionInfo;-><init>()V

    return-void
.end method


# virtual methods
.method greylist-max-o clear()V
    .locals 1

    .line 3761
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionSpanInfo;->clear()V

    .line 3762
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 3763
    return-void
.end method

.method greylist-max-o setSpanInfo(Landroid/text/style/SuggestionSpan;II)V
    .locals 1
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "spanStart"    # I
    .param p3, "spanEnd"    # I

    .line 3767
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iput-object p1, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3768
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iput p2, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 3769
    iget-object v0, p0, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iput p3, v0, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 3770
    return-void
.end method
