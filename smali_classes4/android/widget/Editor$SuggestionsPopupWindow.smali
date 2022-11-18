.class final Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;,
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
    }
.end annotation


# static fields
.field private static final greylist-max-o MAX_NUMBER_SUGGESTIONS:I = 0x5

.field private static final greylist-max-o USER_DICTIONARY_EXTRA_LOCALE:Ljava/lang/String; = "locale"

.field private static final greylist-max-o USER_DICTIONARY_EXTRA_WORD:Ljava/lang/String; = "word"


# instance fields
.field private greylist-max-o mAddToDictionaryButton:Landroid/widget/TextView;

.field private greylist-max-o mContainerMarginTop:I

.field private greylist-max-o mContainerMarginWidth:I

.field private greylist-max-o mContainerView:Landroid/widget/LinearLayout;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mCursorWasVisibleBeforeSuggestions:Z

.field private greylist-max-o mDeleteButton:Landroid/widget/TextView;

.field private greylist-max-o mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

.field private greylist-max-o mIsShowingUp:Z

.field private final greylist-max-o mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

.field private greylist-max-o mNumberOfSuggestions:I

.field private greylist-max-o mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

.field private greylist-max-o mSuggestionListView:Landroid/widget/ListView;

.field private greylist-max-o mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCursorWasVisibleBeforeSuggestions(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMisspelledSpanInfo(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumberOfSuggestions(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .locals 0

    iget p0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestionInfos(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionInfo;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhideWithCleanUp(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/Editor;)V
    .locals 2

    .line 3954
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 3922
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 3928
    new-instance v0, Landroid/widget/Editor$SuggestionSpanInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/Editor$SuggestionSpanInfo;-><init>(Landroid/widget/Editor$SuggestionSpanInfo-IA;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 3955
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->isCursorVisibleFromAttr()Z

    move-result p1

    iput-boolean p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 3956
    return-void
.end method

.method private greylist-max-o applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p1, "originalContext"    # Landroid/content/Context;

    .line 3966
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010590

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3968
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 3969
    .local v0, "isLightTheme":Z
    if-eqz v0, :cond_0

    const v2, 0x103024a

    goto :goto_0

    .line 3970
    :cond_0
    const v2, 0x103024b

    :goto_0
    nop

    .line 3971
    .local v2, "themeId":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3972
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v3
.end method

.method private greylist-max-o hideWithCleanUp()V
    .locals 4

    .line 4196
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4197
    .local v3, "info":Landroid/widget/Editor$SuggestionInfo;
    invoke-virtual {v3}, Landroid/widget/Editor$SuggestionInfo;->clear()V

    .line 4196
    .end local v3    # "info":Landroid/widget/Editor$SuggestionInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4199
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionSpanInfo;->clear()V

    .line 4200
    invoke-virtual {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 4201
    return-void
.end method

.method private greylist-max-o highlightTextDifferences(Landroid/widget/Editor$SuggestionInfo;II)V
    .locals 8
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionInfo;
    .param p2, "unionStart"    # I
    .param p3, "unionEnd"    # I

    .line 4272
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 4273
    .local v0, "text":Landroid/text/Spannable;
    iget-object v1, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v1, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 4274
    .local v1, "spanStart":I
    iget-object v2, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v2, v2, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 4277
    .local v2, "spanEnd":I
    sub-int v3, v1, p2

    iput v3, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 4278
    iget v3, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    iget-object v4, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    .line 4279
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 4281
    iget-object v3, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

    iget-object v5, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4285
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4286
    .local v3, "textAsString":Ljava/lang/String;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4287
    iget-object v4, p1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4288
    return-void
.end method

.method private greylist-max-o updateSuggestions()Z
    .locals 10

    .line 4204
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 4205
    .local v0, "spannable":Landroid/text/Spannable;
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmSuggestionHelper(Landroid/widget/Editor;)Landroid/widget/Editor$SuggestionHelper;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 4206
    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor$SuggestionHelper;->getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    .line 4207
    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v1, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-nez v1, :cond_0

    .line 4208
    return v2

    .line 4211
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4212
    .local v1, "spanUnionStart":I
    const/4 v3, 0x0

    .line 4214
    .local v3, "spanUnionEnd":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v4, v5, :cond_1

    .line 4215
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 4216
    .local v5, "spanInfo":Landroid/widget/Editor$SuggestionSpanInfo;
    iget v6, v5, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4217
    iget v6, v5, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4214
    .end local v5    # "spanInfo":Landroid/widget/Editor$SuggestionSpanInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4219
    .end local v4    # "i":I
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v4, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-eqz v4, :cond_2

    .line 4220
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v4, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4221
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v4, v4, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4224
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    iget v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v4, v5, :cond_3

    .line 4225
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v5, v5, v4

    invoke-direct {p0, v5, v1, v3}, Landroid/widget/Editor$SuggestionsPopupWindow;->highlightTextDifferences(Landroid/widget/Editor$SuggestionInfo;II)V

    .line 4224
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4229
    .end local v4    # "i":I
    :cond_3
    const/16 v4, 0x8

    .line 4230
    .local v4, "addToDictionaryButtonVisibility":I
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v5, v5, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    if-eqz v5, :cond_4

    .line 4231
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v5, v5, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-ltz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v5, v5, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget v6, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    if-le v5, v6, :cond_4

    .line 4233
    const/4 v4, 0x0

    .line 4236
    :cond_4
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4238
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v6, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct {v6}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    iput-object v6, v5, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 4240
    :cond_5
    iget v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-eqz v5, :cond_6

    .line 4241
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v2, v5, v2

    iget-object v2, v2, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v2, v2, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 4242
    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v2

    .local v2, "underlineColor":I
    goto :goto_2

    .line 4244
    .end local v2    # "underlineColor":I
    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mMisspelledSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    iget-object v2, v2, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-virtual {v2}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v2

    .line 4247
    .restart local v2    # "underlineColor":I
    :goto_2
    if-nez v2, :cond_7

    .line 4249
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    iget v6, v6, Landroid/widget/TextView;->mHighlightColor:I

    invoke-virtual {v5, v6}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    goto :goto_3

    .line 4251
    :cond_7
    const v5, 0x3ecccccd    # 0.4f

    .line 4252
    .local v5, "BACKGROUND_TRANSPARENCY":F
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 4253
    .local v6, "newAlpha":I
    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v7, v7, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    const v8, 0xffffff

    and-int/2addr v8, v2

    shl-int/lit8 v9, v6, 0x18

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    .line 4256
    .end local v5    # "BACKGROUND_TRANSPARENCY":F
    .end local v6    # "newAlpha":I
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->isVisibleToAccessibility()Z

    move-result v5

    .line 4257
    .local v5, "sendAccessibilityEvent":Z
    const/4 v6, 0x1

    if-eqz v5, :cond_8

    .line 4258
    new-instance v7, Landroid/text/SpannedString;

    invoke-direct {v7, v0, v6}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;Z)V

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    .line 4259
    .local v7, "beforeText":Ljava/lang/CharSequence;
    :goto_4
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v8, v8, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    const/16 v9, 0x21

    invoke-interface {v0, v8, v1, v3, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4261
    if-eqz v5, :cond_9

    .line 4262
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7, v1, v3}, Landroid/widget/TextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;II)V

    .line 4266
    :cond_9
    iget-object v8, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->notifyDataSetChanged()V

    .line 4267
    return v6
.end method


# virtual methods
.method protected greylist-max-o clipVertically(I)I
    .locals 3
    .param p1, "positionY"    # I

    .line 4190
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 4191
    .local v0, "height":I
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4192
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected greylist-max-o createPopupWindow()V
    .locals 3

    .line 3977
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow-IA;)V

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 3978
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3979
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3980
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3981
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 3982
    return-void
.end method

.method protected greylist-max-o getTextOffset()I
    .locals 2

    .line 4179
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected greylist-max-o getVerticalLocalPosition(I)I
    .locals 3
    .param p1, "line"    # I

    .line 4184
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4185
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v1

    iget v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginTop:I

    sub-int/2addr v1, v2

    return v1
.end method

.method protected greylist-max-o initContentView()V
    .locals 7

    .line 3986
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3988
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    iget v1, v1, Landroid/widget/TextView;->mTextEditSuggestionContainerLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 3991
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v3, 0x10204fb

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    .line 3993
    nop

    .line 3994
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3995
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginWidth:I

    .line 3996
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginTop:I

    .line 3997
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mClippingLimitLeft:I

    .line 3998
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mClippingLimitRight:I

    .line 4000
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v4, 0x10204fa

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    .line 4003
    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v3, p0, v2}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter-IA;)V

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    .line 4004
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4005
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4008
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmEditorExt(Landroid/widget/Editor;)Landroid/widget/IEditorExt;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-interface {v3, v4, v5}, Landroid/widget/IEditorExt;->setBackground(Landroid/widget/ListView;Landroid/graphics/drawable/ColorDrawable;)V

    .line 4012
    const/4 v3, 0x5

    new-array v3, v3, [Landroid/widget/Editor$SuggestionInfo;

    iput-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    .line 4013
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 4014
    new-instance v5, Landroid/widget/Editor$SuggestionInfo;

    invoke-direct {v5, v2}, Landroid/widget/Editor$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionInfo-IA;)V

    aput-object v5, v4, v3

    .line 4013
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4017
    .end local v3    # "i":I
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v3, 0x10201cc

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    .line 4019
    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$SuggestionsPopupWindow$1;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4050
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v3, 0x102029e

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    .line 4052
    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$2;

    invoke-direct {v3, p0}, Landroid/widget/Editor$SuggestionsPopupWindow$2;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4074
    return-void
.end method

.method public greylist-max-o isShowingUp()Z
    .locals 1

    .line 4077
    iget-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    return v0
.end method

.method protected greylist-max-o measureContent()V
    .locals 8

    .line 4137
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4138
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 4140
    .local v1, "horizontalMeasure":I
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 4143
    .local v2, "verticalMeasure":I
    const/4 v3, 0x0

    .line 4144
    .local v3, "width":I
    const/4 v4, 0x0

    .line 4145
    .local v4, "view":Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-ge v5, v6, :cond_0

    .line 4146
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v4, v7}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4147
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/4 v7, -0x2

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4148
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 4149
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4145
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4152
    .end local v5    # "i":I
    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 4153
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 4154
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mAddToDictionaryButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4157
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 4158
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mDeleteButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4160
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContainerMarginWidth:I

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 4164
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const/high16 v6, 0x40000000    # 2.0f

    .line 4165
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 4164
    invoke-virtual {v5, v6, v2}, Landroid/view/ViewGroup;->measure(II)V

    .line 4168
    iget-object v5, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4169
    .local v5, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_3

    .line 4170
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v6, v7}, Landroid/widget/Editor;->-$$Nest$fputmTempRect(Landroid/widget/Editor;Landroid/graphics/Rect;)V

    .line 4171
    :cond_2
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4172
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-$$Nest$fgetmTempRect(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 4174
    :cond_3
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4175
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 4292
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionInfos:[Landroid/widget/Editor$SuggestionInfo;

    aget-object v0, v0, p3

    .line 4293
    .local v0, "suggestionInfo":Landroid/widget/Editor$SuggestionInfo;
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1, v0}, Landroid/widget/Editor;->-$$Nest$mreplaceWithSuggestion(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    .line 4294
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hideWithCleanUp()V

    .line 4295
    return-void
.end method

.method public greylist-max-o onParentLostFocus()V
    .locals 1

    .line 4081
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 4082
    return-void
.end method

.method protected greylist-max-o setUp()V
    .locals 3

    .line 3960
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->applyDefaultTheme(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mContext:Landroid/content/Context;

    .line 3961
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextEditSuggestionHighlightStyle:I

    invoke-direct {v1, v0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mHighlightSpan:Landroid/text/style/TextAppearanceSpan;

    .line 3963
    return-void
.end method

.method public greylist-max-o show()V
    .locals 3

    .line 4120
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    return-void

    .line 4121
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mextractedTextModeWillBeStarted(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4122
    return-void

    .line 4125
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor$SuggestionsPopupWindow;->updateSuggestions()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4126
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isCursorVisibleFromAttr()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mCursorWasVisibleBeforeSuggestions:Z

    .line 4127
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 4128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mIsShowingUp:Z

    .line 4129
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    .line 4132
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mSuggestionListView:Landroid/widget/ListView;

    iget v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow;->mNumberOfSuggestions:I

    if-nez v2, :cond_3

    const/16 v1, 0x8

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4133
    return-void
.end method
