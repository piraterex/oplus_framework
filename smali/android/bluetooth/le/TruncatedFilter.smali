.class public final Landroid/bluetooth/le/TruncatedFilter;
.super Ljava/lang/Object;
.source "TruncatedFilter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist mFilter:Landroid/bluetooth/le/ScanFilter;

.field private final blacklist mStorageDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/bluetooth/le/ScanFilter;Ljava/util/List;)V
    .locals 0
    .param p1, "filter"    # Landroid/bluetooth/le/ScanFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanFilter;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p2, "storageDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/bluetooth/le/TruncatedFilter;->mFilter:Landroid/bluetooth/le/ScanFilter;

    .line 46
    iput-object p2, p0, Landroid/bluetooth/le/TruncatedFilter;->mStorageDescriptors:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist getFilter()Landroid/bluetooth/le/ScanFilter;
    .locals 1

    .line 53
    iget-object v0, p0, Landroid/bluetooth/le/TruncatedFilter;->mFilter:Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public whitelist getStorageDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Landroid/bluetooth/le/TruncatedFilter;->mStorageDescriptors:Ljava/util/List;

    return-object v0
.end method
