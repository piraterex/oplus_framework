.class public final Landroid/text/Selection$MemoryTextWatcher;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MemoryTextWatcher"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .line 144
    invoke-static {}, Landroid/text/Selection;->-$$Nest$sfgetSELECTION_MEMORY()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 145
    invoke-interface {p1, p0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public whitelist beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 137
    return-void
.end method

.method public whitelist onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 140
    return-void
.end method
