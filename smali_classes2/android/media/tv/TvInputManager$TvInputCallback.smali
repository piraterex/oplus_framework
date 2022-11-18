.class public abstract Landroid/media/tv/TvInputManager$TvInputCallback;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TvInputCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCurrentTunedInfosUpdated(Ljava/util/List;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;)V"
        }
    .end annotation

    .line 1043
    .local p1, "tunedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    return-void
.end method

.method public whitelist onInputAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 998
    return-void
.end method

.method public whitelist onInputRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1009
    return-void
.end method

.method public whitelist onInputStateChanged(Ljava/lang/String;I)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 987
    return-void
.end method

.method public whitelist onInputUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "inputId"    # Ljava/lang/String;

    .line 1020
    return-void
.end method

.method public whitelist onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    .locals 0
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 1032
    return-void
.end method
