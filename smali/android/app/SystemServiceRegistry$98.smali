.class Landroid/app/SystemServiceRegistry$98;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/view/translation/TranslationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 1199
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/view/translation/TranslationManager;
    .locals 4
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1203
    const-string/jumbo v0, "translation"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1204
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/view/translation/ITranslationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/translation/ITranslationManager;

    move-result-object v1

    .line 1206
    .local v1, "service":Landroid/view/translation/ITranslationManager;
    if-eqz v1, :cond_0

    .line 1207
    new-instance v2, Landroid/view/translation/TranslationManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/view/translation/TranslationManager;-><init>(Landroid/content/Context;Landroid/view/translation/ITranslationManager;)V

    return-object v2

    .line 1209
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 1199
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$98;->createService(Landroid/app/ContextImpl;)Landroid/view/translation/TranslationManager;

    move-result-object p1

    return-object p1
.end method
