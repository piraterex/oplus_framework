.class public interface abstract Landroid/widget/MultiAutoCompleteTextView$Tokenizer;
.super Ljava/lang/Object;
.source "MultiAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tokenizer"
.end annotation


# virtual methods
.method public abstract whitelist findTokenEnd(Ljava/lang/CharSequence;I)I
.end method

.method public abstract whitelist findTokenStart(Ljava/lang/CharSequence;I)I
.end method

.method public abstract whitelist terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method
