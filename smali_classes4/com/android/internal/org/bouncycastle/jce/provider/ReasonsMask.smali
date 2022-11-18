.class Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;
.source "ReasonsMask.java"


# static fields
.field static final blacklist allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;


# instance fields
.field private blacklist _reasons:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    .line 36
    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 0
    .param p1, "reasons"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    .line 27
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;)V
    .locals 1
    .param p1, "reasons"    # Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    .line 22
    return-void
.end method


# virtual methods
.method blacklist addReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)V
    .locals 2
    .param p1, "mask"    # Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    .line 54
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    .line 55
    return-void
.end method

.method blacklist getReasons()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    return v0
.end method

.method blacklist hasNewReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Z
    .locals 3
    .param p1, "mask"    # Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    .line 90
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist intersect(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    .locals 4
    .param p1, "mask"    # Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    .line 77
    new-instance v0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 78
    .local v0, "_mask":Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;
    new-instance v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->getReasons()I

    move-result v3

    and-int/2addr v2, v3

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;)V

    .line 79
    return-object v0
.end method

.method blacklist isAllReasons()Z
    .locals 2

    .line 66
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    sget-object v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;

    iget v1, v1, Lcom/android/internal/org/bouncycastle/jce/provider/ReasonsMask;->_reasons:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
