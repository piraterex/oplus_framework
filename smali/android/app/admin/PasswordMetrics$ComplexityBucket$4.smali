.class final enum Landroid/app/admin/PasswordMetrics$ComplexityBucket$4;
.super Landroid/app/admin/PasswordMetrics$ComplexityBucket;
.source "PasswordMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PasswordMetrics$ComplexityBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "complexityLevel"    # I

    .line 448
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;-><init>(Ljava/lang/String;IILandroid/app/admin/PasswordMetrics$ComplexityBucket-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IILandroid/app/admin/PasswordMetrics$ComplexityBucket$4-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/admin/PasswordMetrics$ComplexityBucket$4;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method blacklist allowsCredType(I)Z
    .locals 1
    .param p1, "credType"    # I

    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method blacklist canHaveSequence()Z
    .locals 1

    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method blacklist getMinimumLength(Z)I
    .locals 1
    .param p1, "containsNonNumeric"    # Z

    .line 456
    const/4 v0, 0x0

    return v0
.end method
