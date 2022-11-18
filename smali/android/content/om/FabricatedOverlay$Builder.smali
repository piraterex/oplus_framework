.class public Landroid/content/om/FabricatedOverlay$Builder;
.super Ljava/lang/Object;
.source "FabricatedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/FabricatedOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FabricatedOverlayInternalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOwningPackage:Ljava/lang/String;

.field private blacklist mTargetOverlayable:Ljava/lang/String;

.field private final blacklist mTargetPackage:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "owningPackage"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "targetPackage"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    .line 70
    const-string v0, "\'owningPackage\' must not be empty nor null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 72
    const-string v0, "\'name\'\' must not be empty nor null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 74
    const-string v0, "\'targetPackage\' must not be empty nor null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 77
    iput-object p1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mOwningPackage:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Landroid/content/om/FabricatedOverlay$Builder;->mName:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetPackage:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/om/FabricatedOverlay;
    .locals 3

    .line 111
    new-instance v0, Landroid/os/FabricatedOverlayInternal;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternal;-><init>()V

    .line 112
    .local v0, "overlay":Landroid/os/FabricatedOverlayInternal;
    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mOwningPackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mName:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetPackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    .line 117
    iget-object v1, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    iget-object v2, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    new-instance v1, Landroid/content/om/FabricatedOverlay;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;Landroid/content/om/FabricatedOverlay-IA;)V

    return-object v1
.end method

.method public blacklist setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;
    .locals 2
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "dataType"    # I
    .param p3, "value"    # I

    .line 101
    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    .line 102
    .local v0, "entry":Landroid/os/FabricatedOverlayInternalEntry;
    iput-object p1, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    .line 103
    iput p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    .line 104
    iput p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    .line 105
    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    return-object p0
.end method

.method public blacklist setTargetOverlayable(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .locals 1
    .param p1, "targetOverlayable"    # Ljava/lang/String;

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    .line 87
    return-object p0
.end method
