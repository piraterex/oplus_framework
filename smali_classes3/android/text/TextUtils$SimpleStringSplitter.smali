.class public Landroid/text/TextUtils$SimpleStringSplitter;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/text/TextUtils$StringSplitter;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleStringSplitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/text/TextUtils$StringSplitter;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mDelimiter:C

.field private greylist-max-o mLength:I

.field private greylist-max-o mPosition:I

.field private greylist-max-o mString:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(C)V
    .locals 0
    .param p1, "delimiter"    # C

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-char p1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mDelimiter:C

    .line 538
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .locals 2

    .line 555
    iget v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    iget v1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 551
    return-object p0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 1

    .line 526
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist next()Ljava/lang/String;
    .locals 3

    .line 559
    iget-object v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    iget-char v1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mDelimiter:C

    iget v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 560
    .local v0, "end":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 561
    iget v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    .line 563
    :cond_0
    iget-object v1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    iget v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, "nextString":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    .line 565
    return-object v1
.end method

.method public whitelist test-api remove()V
    .locals 1

    .line 569
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setString(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 545
    iput-object p1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    .line 547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    .line 548
    return-void
.end method
