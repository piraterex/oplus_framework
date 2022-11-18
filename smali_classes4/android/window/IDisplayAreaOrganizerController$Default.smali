.class public Landroid/window/IDisplayAreaOrganizerController$Default;
.super Ljava/lang/Object;
.source "IDisplayAreaOrganizerController.java"

# interfaces
.implements Landroid/window/IDisplayAreaOrganizerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/IDisplayAreaOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist createTaskDisplayArea(Landroid/window/IDisplayAreaOrganizer;IILjava/lang/String;)Landroid/window/DisplayAreaAppearedInfo;
    .locals 1
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "displayId"    # I
    .param p3, "parentFeatureId"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deleteTaskDisplayArea(Landroid/window/WindowContainerToken;)V
    .locals 0
    .param p1, "taskDisplayArea"    # Landroid/window/WindowContainerToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public blacklist registerOrganizer(Landroid/window/IDisplayAreaOrganizer;I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "displayAreaFeature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/IDisplayAreaOrganizer;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist unregisterOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .locals 0
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
