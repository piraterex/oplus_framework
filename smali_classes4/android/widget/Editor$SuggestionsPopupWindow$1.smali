.class Landroid/widget/Editor$SuggestionsPopupWindow$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 4019
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .line 4021
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v1}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$fgetmMisspelledSpanInfo(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    move-result-object v1

    .line 4022
    invoke-static {v0, v1}, Landroid/widget/Editor;->-$$Nest$mfindEquivalentSuggestionSpan(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionSpanInfo;)Landroid/text/style/SuggestionSpan;

    move-result-object v0

    .line 4023
    .local v0, "misspelledSpan":Landroid/text/style/SuggestionSpan;
    if-nez v0, :cond_0

    .line 4025
    return-void

    .line 4027
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 4028
    .local v1, "editable":Landroid/text/Editable;
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 4029
    .local v2, "spanStart":I
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 4030
    .local v3, "spanEnd":I
    if-ltz v2, :cond_2

    if-gt v3, v2, :cond_1

    goto :goto_0

    .line 4033
    :cond_1
    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v4

    .line 4035
    .local v4, "originalText":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4036
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "word"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4037
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    .line 4038
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4037
    const-string/jumbo v7, "locale"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4039
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4040
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->startActivityAsTextOperationUserIfNecessary(Landroid/content/Intent;)V

    .line 4043
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$fgetmMisspelledSpanInfo(Landroid/widget/Editor$SuggestionsPopupWindow;)Landroid/widget/Editor$SuggestionSpanInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 4044
    invoke-static {v1, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 4045
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v6, v6, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v7, 0x0

    invoke-static {v6, v2, v3, v7}, Landroid/widget/Editor;->-$$Nest$mupdateSpellCheckSpans(Landroid/widget/Editor;IIZ)V

    .line 4046
    iget-object v6, p0, Landroid/widget/Editor$SuggestionsPopupWindow$1;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$mhideWithCleanUp(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    .line 4047
    return-void

    .line 4031
    .end local v4    # "originalText":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void
.end method
