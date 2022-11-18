.class public Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Default;
.super Ljava/lang/Object;
.source "ICallDiagnosticServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
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

.method public blacklist clearDiagnosticMessage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "messageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "messageId"    # I
    .param p3, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist sendDeviceToDeviceMessage(Ljava/lang/String;II)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method
