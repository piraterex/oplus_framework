.class Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private blacklist lazyOverflowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private blacklist nextCalledBeforeRemove:Z

.field private blacklist pos:I

.field final synthetic blacklist this$0:Lcom/android/framework/protobuf/SmallSortedMap;


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/SmallSortedMap;)V
    .locals 0

    .line 534
    .local p0, "this":Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;, "Lcom/android/framework/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    iput-object p1, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->pos:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/SmallSortedMap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/framework/protobuf/SmallSortedMap;
    .param p2, "x1"    # Lcom/android/framework/protobuf/SmallSortedMap$1;

    .line 534
    .local p0, "this":Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;, "Lcom/android/framework/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    return-void
.end method

.method private blacklist getOverflowIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 578
    .local p0, "this":Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;, "Lcom/android/framework/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->access$700(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .locals 3

    .line 542
    .local p0, "this":Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;, "Lcom/android/framework/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    iget v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v2}, Lcom/android/framework/protobuf/SmallSortedMap;->access$600(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    .line 543
    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->access$700(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 542
    :goto_1
    return v1
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 1

    .line 534
    .local p0, "this":Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;, "Lcom/android/framework/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 548
    .local p0, "this":Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;, "Lcom/android/framework/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 551
    iget v1, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->access$600(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->access$600(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 554
    :cond_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public whitelist test-api remove()V
    .locals 3

    .line 559
    .local p0, "this":Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;, "Lcom/android/framework/protobuf/SmallSortedMap<TK;TV;>.EntryIterator;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    if-eqz v0, :cond_1

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->nextCalledBeforeRemove:Z

    .line 563
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->access$300(Lcom/android/framework/protobuf/SmallSortedMap;)V

    .line 565
    iget v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->pos:I

    iget-object v1, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->access$600(Lcom/android/framework/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->this$0:Lcom/android/framework/protobuf/SmallSortedMap;

    iget v1, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->pos:I

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->access$800(Lcom/android/framework/protobuf/SmallSortedMap;I)Ljava/lang/Object;

    goto :goto_0

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/SmallSortedMap$EntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 570
    :goto_0
    return-void

    .line 560
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
