.class Landroid/app/ResourcesManager$ActivityResources;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityResources"
.end annotation


# instance fields
.field public final greylist-max-o activityResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ResourcesManager$ActivityResource;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist-max-o overrideConfig:Landroid/content/res/Configuration;

.field public blacklist overrideDisplayId:I


# direct methods
.method private constructor greylist <init>()V
    .locals 1

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    .line 210
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ResourcesManager$ActivityResources-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ResourcesManager$ActivityResources;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist countLiveReferences()I
    .locals 4

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 216
    iget-object v2, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ResourcesManager$ActivityResource;

    iget-object v2, v2, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    .line 217
    .local v2, "resources":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 218
    add-int/lit8 v0, v0, 0x1

    .line 215
    .end local v2    # "resources":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "i":I
    :cond_1
    return v0
.end method
