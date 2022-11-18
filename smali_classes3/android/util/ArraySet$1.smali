.class Landroid/util/ArraySet$1;
.super Landroid/util/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/MapCollections<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/util/ArraySet;


# direct methods
.method constructor blacklist <init>(Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/ArraySet;

    .line 876
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    iput-object p1, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist colClear()V
    .locals 1

    .line 919
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 920
    return-void
.end method

.method protected blacklist colGetEntry(II)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .line 884
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    iget-object v0, v0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected blacklist colGetMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 899
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist colGetSize()I
    .locals 1

    .line 879
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    iget v0, v0, Landroid/util/ArraySet;->mSize:I

    return v0
.end method

.method protected blacklist colIndexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 889
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist colIndexOfValue(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 894
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 904
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    .local p1, "key":Ljava/lang/Object;, "TE;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 905
    return-void
.end method

.method protected blacklist colRemoveAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 914
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    iget-object v0, p0, Landroid/util/ArraySet$1;->this$0:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 915
    return-void
.end method

.method protected blacklist colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 909
    .local p0, "this":Landroid/util/ArraySet$1;, "Landroid/util/ArraySet$1;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not a map"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
