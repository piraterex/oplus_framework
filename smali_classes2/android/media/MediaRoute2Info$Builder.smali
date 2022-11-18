.class public final Landroid/media/MediaRoute2Info$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2Info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mAddress:Ljava/lang/String;

.field blacklist mClientPackageName:Ljava/lang/String;

.field blacklist mConnectionState:I

.field blacklist mDeduplicationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mDescription:Ljava/lang/CharSequence;

.field blacklist mExtras:Landroid/os/Bundle;

.field final blacklist mFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mIconUri:Landroid/net/Uri;

.field final blacklist mId:Ljava/lang/String;

.field blacklist mIsSystem:Z

.field final blacklist mName:Ljava/lang/CharSequence;

.field blacklist mPackageName:Ljava/lang/String;

.field blacklist mProviderId:Ljava/lang/String;

.field blacklist mType:I

.field blacklist mVolume:I

.field blacklist mVolumeHandling:I

.field blacklist mVolumeMax:I


# direct methods
.method public constructor whitelist <init>(Landroid/media/MediaRoute2Info;)V
    .locals 1
    .param p1, "routeInfo"    # Landroid/media/MediaRoute2Info;

    .line 764
    iget-object v0, p1, Landroid/media/MediaRoute2Info;->mId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 765
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "routeInfo"    # Landroid/media/MediaRoute2Info;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 726
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 776
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 779
    const-string v0, "routeInfo must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 781
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    .line 782
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Landroid/media/MediaRoute2Info;->mFeatures:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    .line 784
    iget v0, p2, Landroid/media/MediaRoute2Info;->mType:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 785
    iget-boolean v0, p2, Landroid/media/MediaRoute2Info;->mIsSystem:Z

    iput-boolean v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    .line 786
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mIconUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    .line 787
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 788
    iget v0, p2, Landroid/media/MediaRoute2Info;->mConnectionState:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    .line 789
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mClientPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    .line 790
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mPackageName:Ljava/lang/String;

    .line 791
    iget v0, p2, Landroid/media/MediaRoute2Info;->mVolumeHandling:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 792
    iget v0, p2, Landroid/media/MediaRoute2Info;->mVolumeMax:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    .line 793
    iget v0, p2, Landroid/media/MediaRoute2Info;->mVolume:I

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    .line 794
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    .line 795
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mDeduplicationIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 796
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 797
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p2, Landroid/media/MediaRoute2Info;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 799
    :cond_0
    iget-object v0, p2, Landroid/media/MediaRoute2Info;->mProviderId:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    .line 800
    return-void

    .line 777
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/CharSequence;

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 717
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 726
    iput v0, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 745
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 748
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mId:Ljava/lang/String;

    .line 752
    iput-object p2, p0, Landroid/media/MediaRoute2Info$Builder;->mName:Ljava/lang/CharSequence;

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    .line 754
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 755
    return-void

    .line 749
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .line 813
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 817
    return-object p0

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "feature must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist addFeatures(Ljava/util/Collection;)Landroid/media/MediaRoute2Info$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 831
    .local p1, "features":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v0, "features must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 832
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 833
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 834
    .end local v1    # "feature":Ljava/lang/String;
    goto :goto_0

    .line 835
    :cond_0
    return-object p0
.end method

.method public whitelist build()Landroid/media/MediaRoute2Info;
    .locals 2

    .line 1015
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    new-instance v0, Landroid/media/MediaRoute2Info;

    invoke-direct {v0, p0}, Landroid/media/MediaRoute2Info;-><init>(Landroid/media/MediaRoute2Info$Builder;)V

    return-object v0

    .line 1016
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "features must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearFeatures()Landroid/media/MediaRoute2Info$Builder;
    .locals 1

    .line 843
    iget-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 844
    return-object p0
.end method

.method public blacklist setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 961
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mAddress:Ljava/lang/String;

    .line 962
    return-object p0
.end method

.method public whitelist setClientPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 914
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mClientPackageName:Ljava/lang/String;

    .line 915
    return-object p0
.end method

.method public whitelist setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "connectionState"    # I

    .line 905
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mConnectionState:I

    .line 906
    return-object p0
.end method

.method public blacklist setDeduplicationIds(Ljava/util/Set;)Landroid/media/MediaRoute2Info$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/media/MediaRoute2Info$Builder;"
        }
    .end annotation

    .line 976
    .local p1, "id":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mDeduplicationIds:Ljava/util/Set;

    .line 977
    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 892
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mDescription:Ljava/lang/CharSequence;

    .line 893
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2Info$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 987
    if-nez p1, :cond_0

    .line 988
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 989
    return-object p0

    .line 991
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaRoute2Info$Builder;->mExtras:Landroid/os/Bundle;

    .line 992
    return-object p0
.end method

.method public whitelist setIconUri(Landroid/net/Uri;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "iconUri"    # Landroid/net/Uri;

    .line 883
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIconUri:Landroid/net/Uri;

    .line 884
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 924
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mPackageName:Ljava/lang/String;

    .line 925
    return-object p0
.end method

.method public blacklist setProviderId(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;
    .locals 2
    .param p1, "providerId"    # Ljava/lang/String;

    .line 1001
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1004
    iput-object p1, p0, Landroid/media/MediaRoute2Info$Builder;->mProviderId:Ljava/lang/String;

    .line 1005
    return-object p0

    .line 1002
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "providerId must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSystemRoute(Z)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "isSystem"    # Z

    .line 863
    iput-boolean p1, p0, Landroid/media/MediaRoute2Info$Builder;->mIsSystem:Z

    .line 864
    return-object p0
.end method

.method public blacklist setType(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "type"    # I

    .line 853
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mType:I

    .line 854
    return-object p0
.end method

.method public whitelist setVolume(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "volume"    # I

    .line 951
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolume:I

    .line 952
    return-object p0
.end method

.method public whitelist setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "volumeHandling"    # I

    .line 933
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeHandling:I

    .line 934
    return-object p0
.end method

.method public whitelist setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;
    .locals 0
    .param p1, "volumeMax"    # I

    .line 942
    iput p1, p0, Landroid/media/MediaRoute2Info$Builder;->mVolumeMax:I

    .line 943
    return-object p0
.end method
