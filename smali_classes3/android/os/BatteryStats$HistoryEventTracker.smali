.class public final Landroid/os/BatteryStats$HistoryEventTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryEventTracker"
.end annotation


# instance fields
.field private final greylist-max-o mActiveEvents:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 2228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2229
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public greylist-max-o getStateForEvent(I)Ljava/util/HashMap;
    .locals 1
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    .line 2281
    iget-object v0, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public greylist-max-o removeEvents(I)V
    .locals 3
    .param p1, "code"    # I

    .line 2276
    const v0, -0xc001

    and-int/2addr v0, p1

    .line 2277
    .local v0, "idx":I
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2278
    return-void
.end method

.method public greylist-max-o updateState(ILjava/lang/String;II)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "poolIdx"    # I

    .line 2233
    const v0, 0x8000

    and-int/2addr v0, p1

    const v1, -0xc001

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2234
    and-int v0, p1, v1

    .line 2235
    .local v0, "idx":I
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    .line 2236
    .local v1, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v1, :cond_0

    .line 2237
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 2238
    iget-object v3, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aput-object v1, v3, v0

    .line 2240
    :cond_0
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 2241
    .local v3, "uids":Landroid/util/SparseIntArray;
    if-nez v3, :cond_1

    .line 2242
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v4

    .line 2243
    invoke-virtual {v1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    :cond_1
    invoke-virtual {v3, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_2

    .line 2247
    return v2

    .line 2249
    :cond_2
    invoke-virtual {v3, p3, p4}, Landroid/util/SparseIntArray;->put(II)V

    .end local v0    # "idx":I
    .end local v1    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v3    # "uids":Landroid/util/SparseIntArray;
    goto :goto_0

    .line 2250
    :cond_3
    and-int/lit16 v0, p1, 0x4000

    if-eqz v0, :cond_7

    .line 2251
    and-int v0, p1, v1

    .line 2252
    .restart local v0    # "idx":I
    iget-object v1, p0, Landroid/os/BatteryStats$HistoryEventTracker;->mActiveEvents:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    .line 2253
    .restart local v1    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v1, :cond_4

    .line 2255
    return v2

    .line 2257
    :cond_4
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    .line 2258
    .restart local v3    # "uids":Landroid/util/SparseIntArray;
    if-nez v3, :cond_5

    .line 2260
    return v2

    .line 2262
    :cond_5
    invoke-virtual {v3, p3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 2263
    if-gez v0, :cond_6

    .line 2265
    return v2

    .line 2267
    :cond_6
    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 2268
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-gtz v2, :cond_8

    .line 2269
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2250
    .end local v0    # "idx":I
    .end local v1    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v3    # "uids":Landroid/util/SparseIntArray;
    :cond_7
    :goto_0
    nop

    .line 2272
    :cond_8
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
