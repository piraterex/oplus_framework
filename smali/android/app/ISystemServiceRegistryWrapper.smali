.class public interface abstract Landroid/app/ISystemServiceRegistryWrapper;
.super Ljava/lang/Object;
.source "ISystemServiceRegistryWrapper.java"


# virtual methods
.method public blacklist registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 9
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    return-void
.end method
