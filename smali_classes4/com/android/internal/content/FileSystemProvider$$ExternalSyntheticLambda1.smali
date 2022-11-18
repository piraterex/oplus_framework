.class public final synthetic Lcom/android/internal/content/FileSystemProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/internal/content/FileSystemProvider;->lambda$queryChildDocumentsShowAll$0(Ljava/io/File;)Z

    move-result p1

    return p1
.end method
