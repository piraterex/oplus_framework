.class public final Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RefreshRateLimitation"
.end annotation


# instance fields
.field public blacklist range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>(IFF)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput p1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    .line 731
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v0, p2, p3}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>(FF)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 732
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshRateLimitation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
