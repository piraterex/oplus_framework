.class public Landroid/util/LongSparseLongArray$Parcelling;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Lcom/android/internal/util/Parcelling;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/LongSparseLongArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parcelling"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Parcelling<",
        "Landroid/util/LongSparseLongArray;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist parcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "array"    # Landroid/util/LongSparseLongArray;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "parcelFlags"    # I

    .line 296
    if-nez p1, :cond_0

    .line 297
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    return-void

    .line 301
    :cond_0
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmSize(Landroid/util/LongSparseLongArray;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 303
    invoke-static {p1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseLongArray;)[J

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 304
    return-void
.end method

.method public bridge synthetic blacklist parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 292
    check-cast p1, Landroid/util/LongSparseLongArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseLongArray$Parcelling;->parcel(Landroid/util/LongSparseLongArray;Landroid/os/Parcel;I)V

    return-void
.end method

.method public blacklist unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 309
    .local v0, "size":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 310
    const/4 v1, 0x0

    return-object v1

    .line 313
    :cond_0
    new-instance v1, Landroid/util/LongSparseLongArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 315
    .local v1, "array":Landroid/util/LongSparseLongArray;
    invoke-static {v1, v0}, Landroid/util/LongSparseLongArray;->-$$Nest$fputmSize(Landroid/util/LongSparseLongArray;I)V

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/LongSparseLongArray;->-$$Nest$fputmKeys(Landroid/util/LongSparseLongArray;[J)V

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/LongSparseLongArray;->-$$Nest$fputmValues(Landroid/util/LongSparseLongArray;[J)V

    .line 320
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-lt v3, v0, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 321
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmValues(Landroid/util/LongSparseLongArray;)[J

    move-result-object v3

    array-length v3, v3

    if-lt v3, v0, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 323
    if-lez v0, :cond_4

    .line 324
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object v3

    aget-wide v5, v3, v2

    .line 325
    .local v5, "last":J
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_4

    .line 326
    invoke-static {v1}, Landroid/util/LongSparseLongArray;->-$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J

    move-result-object v7

    aget-wide v7, v7, v3

    cmp-long v7, v5, v7

    if-gez v7, :cond_3

    move v7, v4

    goto :goto_3

    :cond_3
    move v7, v2

    :goto_3
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 330
    .end local v3    # "i":I
    .end local v5    # "last":J
    :cond_4
    return-object v1
.end method

.method public bridge synthetic blacklist unparcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 292
    invoke-virtual {p0, p1}, Landroid/util/LongSparseLongArray$Parcelling;->unparcel(Landroid/os/Parcel;)Landroid/util/LongSparseLongArray;

    move-result-object p1

    return-object p1
.end method
