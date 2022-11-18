.class public abstract Landroid/view/ViewStructure;
.super Ljava/lang/Object;
.source "ViewStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewStructure$HtmlInfo;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist addChildCount(I)I
.end method

.method public abstract whitelist asyncCommit()V
.end method

.method public abstract whitelist asyncNewChild(I)Landroid/view/ViewStructure;
.end method

.method public abstract whitelist getAutofillId()Landroid/view/autofill/AutofillId;
.end method

.method public abstract whitelist getChildCount()I
.end method

.method public abstract whitelist getExtras()Landroid/os/Bundle;
.end method

.method public abstract whitelist getHint()Ljava/lang/CharSequence;
.end method

.method public abstract greylist-max-o getTempRect()Landroid/graphics/Rect;
.end method

.method public abstract whitelist getText()Ljava/lang/CharSequence;
.end method

.method public abstract whitelist getTextSelectionEnd()I
.end method

.method public abstract whitelist getTextSelectionStart()I
.end method

.method public abstract whitelist hasExtras()Z
.end method

.method public abstract whitelist newChild(I)Landroid/view/ViewStructure;
.end method

.method public abstract whitelist newHtmlInfoBuilder(Ljava/lang/String;)Landroid/view/ViewStructure$HtmlInfo$Builder;
.end method

.method public abstract whitelist setAccessibilityFocused(Z)V
.end method

.method public abstract whitelist setActivated(Z)V
.end method

.method public abstract whitelist setAlpha(F)V
.end method

.method public abstract greylist-max-o setAssistBlocked(Z)V
.end method

.method public abstract whitelist setAutofillHints([Ljava/lang/String;)V
.end method

.method public abstract whitelist setAutofillId(Landroid/view/autofill/AutofillId;)V
.end method

.method public abstract whitelist setAutofillId(Landroid/view/autofill/AutofillId;I)V
.end method

.method public abstract whitelist setAutofillOptions([Ljava/lang/CharSequence;)V
.end method

.method public abstract whitelist setAutofillType(I)V
.end method

.method public abstract whitelist setAutofillValue(Landroid/view/autofill/AutofillValue;)V
.end method

.method public abstract whitelist setCheckable(Z)V
.end method

.method public abstract whitelist setChecked(Z)V
.end method

.method public abstract whitelist setChildCount(I)V
.end method

.method public abstract whitelist setClassName(Ljava/lang/String;)V
.end method

.method public abstract whitelist setClickable(Z)V
.end method

.method public abstract whitelist setContentDescription(Ljava/lang/CharSequence;)V
.end method

.method public abstract whitelist setContextClickable(Z)V
.end method

.method public abstract whitelist setDataIsSensitive(Z)V
.end method

.method public abstract whitelist setDimens(IIIIII)V
.end method

.method public abstract whitelist setElevation(F)V
.end method

.method public abstract whitelist setEnabled(Z)V
.end method

.method public abstract whitelist setFocusable(Z)V
.end method

.method public abstract whitelist setFocused(Z)V
.end method

.method public abstract whitelist setHint(Ljava/lang/CharSequence;)V
.end method

.method public whitelist setHintIdEntry(Ljava/lang/String;)V
    .locals 0
    .param p1, "entryName"    # Ljava/lang/String;

    .line 241
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public abstract whitelist setHtmlInfo(Landroid/view/ViewStructure$HtmlInfo;)V
.end method

.method public abstract whitelist setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public whitelist setImportantForAutofill(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 373
    return-void
.end method

.method public abstract whitelist setInputType(I)V
.end method

.method public abstract whitelist setLocaleList(Landroid/os/LocaleList;)V
.end method

.method public abstract whitelist setLongClickable(Z)V
.end method

.method public whitelist setMaxTextEms(I)V
    .locals 0
    .param p1, "maxEms"    # I

    .line 428
    return-void
.end method

.method public whitelist setMaxTextLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .line 436
    return-void
.end method

.method public whitelist setMinTextEms(I)V
    .locals 0
    .param p1, "minEms"    # I

    .line 420
    return-void
.end method

.method public abstract whitelist setOpaque(Z)V
.end method

.method public whitelist setReceiveContentMimeTypes([Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeTypes"    # [Ljava/lang/String;

    .line 382
    return-void
.end method

.method public abstract whitelist setSelected(Z)V
.end method

.method public abstract whitelist setText(Ljava/lang/CharSequence;)V
.end method

.method public abstract whitelist setText(Ljava/lang/CharSequence;II)V
.end method

.method public whitelist setTextIdEntry(Ljava/lang/String;)V
    .locals 0
    .param p1, "entryName"    # Ljava/lang/String;

    .line 223
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method

.method public abstract whitelist setTextLines([I[I)V
.end method

.method public abstract whitelist setTextStyle(FIII)V
.end method

.method public abstract whitelist setTransformation(Landroid/graphics/Matrix;)V
.end method

.method public abstract whitelist setVisibility(I)V
.end method

.method public abstract whitelist setWebDomain(Ljava/lang/String;)V
.end method
