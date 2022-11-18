.class final Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "MediaRouteChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MediaRouteChooserDialog;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/MediaRouteChooserDialog;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/MediaRouteChooserDialog;Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;)V

    return-void
.end method


# virtual methods
.method public whitelist onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 271
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 272
    return-void
.end method

.method public whitelist onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 281
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 282
    return-void
.end method

.method public whitelist onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 276
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 277
    return-void
.end method

.method public whitelist onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteChooserDialog;

    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog;->dismiss()V

    .line 287
    return-void
.end method
