.class Landroid/app/SystemServiceRegistry$SystemServiceRegistryWrapper;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/ISystemServiceRegistryWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemServiceRegistryWrapper"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 2091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/SystemServiceRegistry$SystemServiceRegistryWrapper-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$SystemServiceRegistryWrapper;-><init>()V

    return-void
.end method


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

    .line 2096
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    invoke-static {p1, p2, p3}, Landroid/app/SystemServiceRegistry;->-$$Nest$smregisterService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2097
    return-void
.end method
