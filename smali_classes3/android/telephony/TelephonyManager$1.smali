.class Landroid/telephony/TelephonyManager$1;
.super Landroid/app/PropertyInvalidatedCache;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/PropertyInvalidatedCache<",
        "Landroid/telecom/PhoneAccountHandle;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .param p2, "maxEntries"    # I
    .param p3, "propertyName"    # Ljava/lang/String;

    .line 400
    iput-object p1, p0, Landroid/telephony/TelephonyManager$1;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p2, p3}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist recompute(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/Integer;
    .locals 3
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager$1;->this$0:Landroid/telephony/TelephonyManager;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->-$$Nest$mgetITelephony(Landroid/telephony/TelephonyManager;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 405
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Landroid/telephony/TelephonyManager$1;->this$0:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->-$$Nest$fgetmContext(Landroid/telephony/TelephonyManager;)Landroid/content/Context;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/TelephonyManager$1;->this$0:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->-$$Nest$fgetmContext(Landroid/telephony/TelephonyManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ITelephony;->getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 411
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    nop

    .line 412
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 400
    check-cast p1, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager$1;->recompute(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
