.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;
.super Ljava/lang/Object;
.source "X500NameTokenizer.java"


# instance fields
.field private blacklist buf:Ljava/lang/StringBuffer;

.field private blacklist index:I

.field private blacklist separator:C

.field private blacklist value:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;

    .line 21
    const/16 v0, 0x2c

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 22
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;C)V
    .locals 1
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "separator"    # C

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    .line 28
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    .line 30
    iput-char p2, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist hasMoreTokens()Z
    .locals 2

    .line 35
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist nextToken()Ljava/lang/String;
    .locals 7

    .line 40
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 46
    .local v0, "end":I
    const/4 v2, 0x0

    .line 47
    .local v2, "quoted":Z
    const/4 v3, 0x0

    .line 49
    .local v3, "escaped":Z
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 51
    :goto_0
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v0, v4, :cond_8

    .line 53
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->value:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 55
    .local v4, "c":C
    const/16 v6, 0x22

    if-ne v4, v6, :cond_3

    .line 57
    if-nez v3, :cond_2

    .line 59
    if-nez v2, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    move v2, v6

    .line 61
    :cond_2
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    const/4 v3, 0x0

    goto :goto_3

    .line 66
    :cond_3
    if-nez v3, :cond_7

    if-eqz v2, :cond_4

    goto :goto_2

    .line 71
    :cond_4
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_5

    .line 73
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 74
    const/4 v3, 0x1

    goto :goto_3

    .line 76
    :cond_5
    iget-char v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->separator:C

    if-ne v4, v6, :cond_6

    .line 78
    goto :goto_4

    .line 82
    :cond_6
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 68
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    const/4 v3, 0x0

    .line 85
    :goto_3
    nop

    .end local v4    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_8
    :goto_4
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->index:I

    .line 90
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/X500NameTokenizer;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
