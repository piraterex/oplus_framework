.class public final synthetic Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# instance fields
.field public final synthetic blacklist f$0:Landroid/service/dreams/DreamService;

.field public final synthetic blacklist f$1:Ljava/io/FileDescriptor;

.field public final synthetic blacklist f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/service/dreams/DreamService;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;->f$0:Landroid/service/dreams/DreamService;

    iput-object p2, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;->f$1:Ljava/io/FileDescriptor;

    iput-object p3, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;->f$0:Landroid/service/dreams/DreamService;

    iget-object v1, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;->f$1:Ljava/io/FileDescriptor;

    iget-object v2, p0, Landroid/service/dreams/DreamService$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/service/dreams/DreamService;->lambda$dump$1$android-service-dreams-DreamService(Ljava/io/FileDescriptor;[Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
