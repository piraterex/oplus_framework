.class public Landroid/view/View$MeasureSpec;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/View$MeasureSpec$MeasureSpecMode;
    }
.end annotation


# static fields
.field public static final whitelist AT_MOST:I = -0x80000000

.field public static final whitelist EXACTLY:I = 0x40000000

.field private static final greylist-max-o MODE_MASK:I = -0x40000000

.field private static final greylist-max-o MODE_SHIFT:I = 0x1e

.field public static final whitelist UNSPECIFIED:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 29451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o adjust(II)I
    .locals 4
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .line 29548
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 29549
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 29550
    .local v1, "size":I
    if-nez v0, :cond_0

    .line 29552
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 29554
    :cond_0
    add-int/2addr v1, p1

    .line 29555
    if-gez v1, :cond_1

    .line 29556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MeasureSpec.adjust: new size would be negative! ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") spec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29557
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29556
    const-string v3, "View"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29558
    const/4 v1, 0x0

    .line 29560
    :cond_1
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2
.end method

.method public static whitelist getMode(I)I
    .locals 1
    .param p0, "measureSpec"    # I

    .line 29534
    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist getSize(I)I
    .locals 1
    .param p0, "measureSpec"    # I

    .line 29544
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    return v0
.end method

.method public static whitelist makeMeasureSpec(II)I
    .locals 2
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .line 29502
    invoke-static {}, Landroid/view/View;->-$$Nest$sfgetsUseBrokenMakeMeasureSpec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29503
    add-int v0, p0, p1

    return v0

    .line 29505
    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr v0, p0

    const/high16 v1, -0x40000000    # -2.0f

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method public static greylist makeSafeMeasureSpec(II)I
    .locals 1
    .param p0, "size"    # I
    .param p1, "mode"    # I

    .line 29517
    sget-boolean v0, Landroid/view/View;->sUseZeroUnspecifiedMeasureSpec:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 29518
    const/4 v0, 0x0

    return v0

    .line 29520
    :cond_0
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method public static whitelist toString(I)Ljava/lang/String;
    .locals 5
    .param p0, "measureSpec"    # I

    .line 29571
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 29572
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 29574
    .local v1, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MeasureSpec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29576
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 29577
    const-string v3, "UNSPECIFIED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 29578
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 29579
    const-string v3, "EXACTLY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 29580
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    .line 29581
    const-string v3, "AT_MOST "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 29583
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29585
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29586
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
