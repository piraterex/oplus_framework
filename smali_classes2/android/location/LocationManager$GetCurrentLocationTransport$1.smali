.class Landroid/location/LocationManager$GetCurrentLocationTransport$1;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$GetCurrentLocationTransport;->onLocation(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
        "Ljava/util/function/Consumer<",
        "Landroid/location/Location;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/location/LocationManager$GetCurrentLocationTransport;

.field final synthetic blacklist val$location:Landroid/location/Location;


# direct methods
.method constructor blacklist <init>(Landroid/location/LocationManager$GetCurrentLocationTransport;Landroid/location/Location;)V
    .locals 0
    .param p1, "this$0"    # Landroid/location/LocationManager$GetCurrentLocationTransport;

    .line 3272
    iput-object p1, p0, Landroid/location/LocationManager$GetCurrentLocationTransport$1;->this$0:Landroid/location/LocationManager$GetCurrentLocationTransport;

    iput-object p2, p0, Landroid/location/LocationManager$GetCurrentLocationTransport$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onPostExecute(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 3280
    iget-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport$1;->this$0:Landroid/location/LocationManager$GetCurrentLocationTransport;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/location/LocationManager$GetCurrentLocationTransport;->mConsumer:Ljava/util/function/Consumer;

    .line 3281
    return-void
.end method

.method public bridge synthetic blacklist operate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3272
    check-cast p1, Ljava/util/function/Consumer;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager$GetCurrentLocationTransport$1;->operate(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist operate(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 3275
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Location;>;"
    iget-object v0, p0, Landroid/location/LocationManager$GetCurrentLocationTransport$1;->val$location:Landroid/location/Location;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3276
    return-void
.end method
