.class public Landroid/service/contentsuggestions/IContentSuggestionsService$Default;
.super Ljava/lang/Object;
.source "IContentSuggestionsService.java"

# interfaces
.implements Landroid/service/contentsuggestions/IContentSuggestionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentsuggestions/IContentSuggestionsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .locals 0
    .param p1, "request"    # Landroid/app/contentsuggestions/ClassificationsRequest;
    .param p2, "callback"    # Landroid/app/contentsuggestions/IClassificationsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "interaction"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist provideContextImage(ILandroid/hardware/HardwareBuffer;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "taskId"    # I
    .param p2, "contextImage"    # Landroid/hardware/HardwareBuffer;
    .param p3, "colorSpaceId"    # I
    .param p4, "imageContextRequestExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .locals 0
    .param p1, "request"    # Landroid/app/contentsuggestions/SelectionsRequest;
    .param p2, "callback"    # Landroid/app/contentsuggestions/ISelectionsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
