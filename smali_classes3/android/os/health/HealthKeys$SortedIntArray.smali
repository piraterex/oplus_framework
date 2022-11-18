.class Landroid/os/health/HealthKeys$SortedIntArray;
.super Ljava/lang/Object;
.source "HealthKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/health/HealthKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortedIntArray"
.end annotation


# instance fields
.field greylist-max-o mArray:[I

.field greylist-max-o mCount:I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .locals 1
    .param p1, "maxCount"    # I

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    .line 192
    return-void
.end method


# virtual methods
.method greylist-max-o addValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 198
    iget-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    iget v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    aput p1, v0, v1

    .line 199
    return-void
.end method

.method greylist-max-o getArray()[I
    .locals 4

    .line 206
    iget v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mCount:I

    iget-object v1, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 207
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 208
    iget-object v0, p0, Landroid/os/health/HealthKeys$SortedIntArray;->mArray:[I

    return-object v0

    .line 210
    :cond_0
    new-array v2, v0, [I

    .line 211
    .local v2, "result":[I
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 213
    return-object v2
.end method
