.class public Landroid/content/om/OverlayManagerTransaction$Builder;
.super Ljava/lang/Object;
.source "OverlayManagerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/OverlayManagerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/om/OverlayManagerTransaction$Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/om/OverlayManagerTransaction;
    .locals 2

    .line 237
    new-instance v0, Landroid/content/om/OverlayManagerTransaction;

    iget-object v1, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    invoke-direct {v0, v1}, Landroid/content/om/OverlayManagerTransaction;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public blacklist registerFabricatedOverlay(Landroid/content/om/FabricatedOverlay;)Landroid/content/om/OverlayManagerTransaction$Builder;
    .locals 6
    .param p1, "overlay"    # Landroid/content/om/FabricatedOverlay;

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p1, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    const-string v2, "fabricated_overlay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 211
    iget-object v1, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    new-instance v2, Landroid/content/om/OverlayManagerTransaction$Request;

    invoke-virtual {p1}, Landroid/content/om/FabricatedOverlay;->getIdentifier()Landroid/content/om/OverlayIdentifier;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v3, v5, v0}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-object p0
.end method

.method public blacklist setEnabled(Landroid/content/om/OverlayIdentifier;Z)Landroid/content/om/OverlayManagerTransaction$Builder;
    .locals 1
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "enable"    # Z

    .line 181
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/om/OverlayManagerTransaction$Builder;->setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setEnabled(Landroid/content/om/OverlayIdentifier;ZI)Landroid/content/om/OverlayManagerTransaction$Builder;
    .locals 3
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;
    .param p2, "enable"    # Z
    .param p3, "userId"    # I

    .line 188
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    xor-int/lit8 v0, p2, 0x1

    .line 191
    .local v0, "type":I
    iget-object v1, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    new-instance v2, Landroid/content/om/OverlayManagerTransaction$Request;

    invoke-direct {v2, v0, p1, p3}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    return-object p0
.end method

.method public blacklist unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Builder;
    .locals 4
    .param p1, "overlay"    # Landroid/content/om/OverlayIdentifier;

    .line 224
    iget-object v0, p0, Landroid/content/om/OverlayManagerTransaction$Builder;->mRequests:Ljava/util/List;

    new-instance v1, Landroid/content/om/OverlayManagerTransaction$Request;

    const/4 v2, 0x3

    const/4 v3, -0x1

    invoke-direct {v1, v2, p1, v3}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-object p0
.end method
