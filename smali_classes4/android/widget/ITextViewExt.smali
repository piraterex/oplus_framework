.class public interface abstract Landroid/widget/ITextViewExt;
.super Ljava/lang/Object;
.source "ITextViewExt.java"


# virtual methods
.method public whitelist flipTypeface(Landroid/graphics/Typeface;Landroid/graphics/Paint;)Landroid/graphics/Typeface;
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 41
    return-object p1
.end method

.method public whitelist getClipboardStatus()Z
    .locals 1

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getTypefaceIndex(II)I
    .locals 0
    .param p1, "originIndex"    # I
    .param p2, "oplusIndex"    # I

    .line 33
    return p1
.end method

.method public whitelist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    return-void
.end method

.method public whitelist replaceFakeBoldToMedium(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "typeface"    # Landroid/graphics/Typeface;
    .param p3, "style"    # I

    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 38
    return-void
.end method
