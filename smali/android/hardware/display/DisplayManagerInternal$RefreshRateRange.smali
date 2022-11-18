.class public final Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateRange"
.end annotation


# static fields
.field public static final blacklist FLOAT_TOLERANCE:F = 0.01f

.field public static final blacklist TAG:Ljava/lang/String; = "RefreshRateRange"


# instance fields
.field public blacklist max:F

.field public blacklist min:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .locals 3
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_2

    const v1, 0x3c23d70a    # 0.01f

    add-float/2addr v1, p2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    .line 683
    move v0, p1

    .line 684
    .local v0, "t":F
    move p1, p2

    .line 685
    move p2, v0

    .line 687
    .end local v0    # "t":F
    :cond_1
    iput p1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    .line 688
    iput p2, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    .line 689
    return-void

    .line 676
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong values for min and max when initializing RefreshRateRange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefreshRateRange"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    .line 679
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 696
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 697
    return v0

    .line 700
    :cond_0
    instance-of v1, p1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 701
    return v2

    .line 704
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 705
    .local v1, "refreshRateRange":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    iget v3, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v4, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    iget v4, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 710
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
