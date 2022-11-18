.class public Landroid/graphics/Paint$FontMetricsInt;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Paint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontMetricsInt"
.end annotation


# instance fields
.field public whitelist ascent:I

.field public whitelist bottom:I

.field public whitelist descent:I

.field public whitelist leading:I

.field public whitelist top:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 2284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 2316
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2317
    :cond_0
    instance-of v1, p1, Landroid/graphics/Paint$FontMetricsInt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2318
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/graphics/Paint$FontMetricsInt;

    .line 2319
    .local v1, "that":Landroid/graphics/Paint$FontMetricsInt;
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 2328
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontMetricsInt: top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ascent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " descent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
