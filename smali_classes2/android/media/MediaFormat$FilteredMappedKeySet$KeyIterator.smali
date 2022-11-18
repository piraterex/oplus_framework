.class Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFormat$FilteredMappedKeySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mLast:Ljava/lang/String;

.field final synthetic blacklist this$1:Landroid/media/MediaFormat$FilteredMappedKeySet;


# direct methods
.method public constructor blacklist <init>(Landroid/media/MediaFormat$FilteredMappedKeySet;)V
    .locals 1

    .line 1944
    iput-object p1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->this$1:Landroid/media/MediaFormat$FilteredMappedKeySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1948
    invoke-static {p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;->-$$Nest$fgetmKeys(Landroid/media/MediaFormat$FilteredMappedKeySet;)Ljava/util/Set;

    move-result-object p1

    .line 1949
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->mIterator:Ljava/util/Iterator;

    .line 1950
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .locals 1

    .line 1954
    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-media-MediaFormat$FilteredMappedKeySet$KeyIterator(Ljava/lang/String;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .line 1949
    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->this$1:Landroid/media/MediaFormat$FilteredMappedKeySet;

    invoke-virtual {v0, p1}, Landroid/media/MediaFormat$FilteredMappedKeySet;->keepKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .locals 1

    .line 1940
    invoke-virtual {p0}, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/lang/String;
    .locals 2

    .line 1959
    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->mLast:Ljava/lang/String;

    .line 1960
    iget-object v1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->this$1:Landroid/media/MediaFormat$FilteredMappedKeySet;

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat$FilteredMappedKeySet;->mapKeyToItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .locals 2

    .line 1965
    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->mIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1966
    iget-object v0, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->this$1:Landroid/media/MediaFormat$FilteredMappedKeySet;

    iget-object v0, v0, Landroid/media/MediaFormat$FilteredMappedKeySet;->this$0:Landroid/media/MediaFormat;

    invoke-static {v0}, Landroid/media/MediaFormat;->-$$Nest$fgetmMap(Landroid/media/MediaFormat;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaFormat$FilteredMappedKeySet$KeyIterator;->mLast:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1967
    return-void
.end method
