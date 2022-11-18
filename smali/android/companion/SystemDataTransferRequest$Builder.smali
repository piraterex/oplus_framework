.class public final Landroid/companion/SystemDataTransferRequest$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "SystemDataTransferRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/SystemDataTransferRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/SystemDataTransferRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mAssociationId:I

.field private blacklist mPermissionSyncAllPackages:Z

.field private blacklist mPermissionSyncPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1
    .param p1, "associationId"    # I

    .line 77
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncPackages:Ljava/util/List;

    .line 78
    iput p1, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mAssociationId:I

    .line 79
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/SystemDataTransferRequest;
    .locals 4

    .line 121
    new-instance v0, Landroid/companion/SystemDataTransferRequest;

    iget v1, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mAssociationId:I

    iget-boolean v2, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncAllPackages:Z

    iget-object v3, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncPackages:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/companion/SystemDataTransferRequest;-><init>(IZLjava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Landroid/companion/SystemDataTransferRequest$Builder;->build()Landroid/companion/SystemDataTransferRequest;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setPermissionSyncAllPackages()Landroid/companion/SystemDataTransferRequest$Builder;
    .locals 1

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncAllPackages:Z

    .line 100
    return-object p0
.end method

.method public blacklist setPermissionSyncPackages(Ljava/util/List;)Landroid/companion/SystemDataTransferRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/companion/SystemDataTransferRequest$Builder;"
        }
    .end annotation

    .line 114
    .local p1, "permissionSyncPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/companion/SystemDataTransferRequest$Builder;->mPermissionSyncPackages:Ljava/util/List;

    .line 115
    return-object p0
.end method
