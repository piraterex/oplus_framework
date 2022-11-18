.class Landroid/os/StrictMode$8;
.super Ljava/lang/ThreadLocal;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/os/StrictMode$ThreadSpanState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 2619
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Landroid/os/StrictMode$ThreadSpanState;
    .locals 2

    .line 2622
    new-instance v0, Landroid/os/StrictMode$ThreadSpanState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ThreadSpanState;-><init>(Landroid/os/StrictMode$ThreadSpanState-IA;)V

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .locals 1

    .line 2619
    invoke-virtual {p0}, Landroid/os/StrictMode$8;->initialValue()Landroid/os/StrictMode$ThreadSpanState;

    move-result-object v0

    return-object v0
.end method
