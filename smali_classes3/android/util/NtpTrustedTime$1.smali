.class Landroid/util/NtpTrustedTime$1;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Landroid/net/ConnectivityManager;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic blacklist this$0:Landroid/util/NtpTrustedTime;


# direct methods
.method constructor blacklist <init>(Landroid/util/NtpTrustedTime;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/NtpTrustedTime;

    .line 127
    iput-object p1, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist get()Landroid/net/ConnectivityManager;
    .locals 2

    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime$1;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Landroid/util/NtpTrustedTime$1;->this$0:Landroid/util/NtpTrustedTime;

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->-$$Nest$fgetmContext(Landroid/util/NtpTrustedTime;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$1;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 138
    .end local p0    # "this":Landroid/util/NtpTrustedTime$1;
    :cond_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime$1;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic whitelist test-api get()Ljava/lang/Object;
    .locals 1

    .line 127
    invoke-virtual {p0}, Landroid/util/NtpTrustedTime$1;->get()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method
