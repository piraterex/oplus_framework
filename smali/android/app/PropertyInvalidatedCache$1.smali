.class Landroid/app/PropertyInvalidatedCache$1;
.super Ljava/util/LinkedHashMap;
.source "PropertyInvalidatedCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/PropertyInvalidatedCache;->createMap()Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "TQuery;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/PropertyInvalidatedCache;


# direct methods
.method constructor blacklist <init>(Landroid/app/PropertyInvalidatedCache;IFZ)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/PropertyInvalidatedCache;
    .param p2, "initialCapacity"    # I
    .param p3, "loadFactor"    # F
    .param p4, "accessOrder"    # Z

    .line 566
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$1;, "Landroid/app/PropertyInvalidatedCache$1;"
    iput-object p1, p0, Landroid/app/PropertyInvalidatedCache$1;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 6
    .param p1, "eldest"    # Ljava/util/Map$Entry;

    .line 570
    .local p0, "this":Landroid/app/PropertyInvalidatedCache$1;, "Landroid/app/PropertyInvalidatedCache$1;"
    invoke-virtual {p0}, Landroid/app/PropertyInvalidatedCache$1;->size()I

    move-result v0

    .line 571
    .local v0, "size":I
    int-to-long v1, v0

    iget-object v3, p0, Landroid/app/PropertyInvalidatedCache$1;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {v3}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fgetmHighWaterMark(Landroid/app/PropertyInvalidatedCache;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 572
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$1;->this$0:Landroid/app/PropertyInvalidatedCache;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fputmHighWaterMark(Landroid/app/PropertyInvalidatedCache;J)V

    .line 574
    :cond_0
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$1;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fgetmMaxEntries(Landroid/app/PropertyInvalidatedCache;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 575
    iget-object v1, p0, Landroid/app/PropertyInvalidatedCache$1;->this$0:Landroid/app/PropertyInvalidatedCache;

    invoke-static {v1}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fgetmMissOverflow(Landroid/app/PropertyInvalidatedCache;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/app/PropertyInvalidatedCache;->-$$Nest$fputmMissOverflow(Landroid/app/PropertyInvalidatedCache;J)V

    .line 576
    const/4 v1, 0x1

    return v1

    .line 578
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
