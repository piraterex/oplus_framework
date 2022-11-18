.class public final synthetic Landroid/service/cloudsearch/CloudSearchService$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/cloudsearch/CloudSearchService;

    check-cast p2, Landroid/app/cloudsearch/SearchRequest;

    invoke-virtual {p1, p2}, Landroid/service/cloudsearch/CloudSearchService;->onSearch(Landroid/app/cloudsearch/SearchRequest;)V

    return-void
.end method
