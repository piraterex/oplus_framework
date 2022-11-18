.class Landroid/media/MediaMetrics$1;
.super Ljava/lang/Object;
.source "MediaMetrics.java"

# interfaces
.implements Landroid/media/MediaMetrics$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaMetrics;->createKey(Ljava/lang/String;Ljava/lang/Class;)Landroid/media/MediaMetrics$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/media/MediaMetrics$Key<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist val$name:Ljava/lang/String;

.field final synthetic blacklist val$type:Ljava/lang/Class;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    .line 214
    iput-object p1, p0, Landroid/media/MediaMetrics$1;->val$name:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/MediaMetrics$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 235
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 236
    return v0

    .line 238
    :cond_0
    instance-of v1, p1, Landroid/media/MediaMetrics$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 239
    return v2

    .line 241
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/MediaMetrics$Key;

    .line 242
    .local v1, "other":Landroid/media/MediaMetrics$Key;, "Landroid/media/MediaMetrics$Key<*>;"
    iget-object v3, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    invoke-interface {v1}, Landroid/media/MediaMetrics$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    invoke-interface {v1}, Landroid/media/MediaMetrics$Key;->getValueClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValueClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/MediaMetrics$1;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/MediaMetrics$1;->mType:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
