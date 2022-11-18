.class public final Lcom/android/server/SystemConfig$SharedLibraryEntry;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedLibraryEntry"
.end annotation


# instance fields
.field public final blacklist canBeSafelyIgnored:Z

.field public final blacklist dependencies:[Ljava/lang/String;

.field public final blacklist filename:Ljava/lang/String;

.field public final blacklist isNative:Z

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist onBootclasspathBefore:Ljava/lang/String;

.field public final blacklist onBootclasspathSince:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dependencies"    # [Ljava/lang/String;
    .param p4, "onBootclasspathSince"    # Ljava/lang/String;
    .param p5, "onBootclasspathBefore"    # Ljava/lang/String;

    .line 191
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dependencies"    # [Ljava/lang/String;
    .param p4, "onBootclasspathSince"    # Ljava/lang/String;
    .param p5, "onBootclasspathBefore"    # Ljava/lang/String;
    .param p6, "isNative"    # Z

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->filename:Ljava/lang/String;

    .line 199
    iput-object p3, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    .line 200
    iput-object p4, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathSince:Ljava/lang/String;

    .line 201
    iput-object p5, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 202
    iput-boolean p6, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->isNative:Z

    .line 207
    if-eqz p4, :cond_0

    .line 209
    invoke-static {p4}, Lcom/android/server/SystemConfig;->-$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p5, :cond_2

    .line 211
    invoke-static {p5}, Lcom/android/server/SystemConfig;->-$$Nest$smisAtLeastSdkLevel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->canBeSafelyIgnored:Z

    .line 212
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dependencies"    # [Ljava/lang/String;
    .param p4, "isNative"    # Z

    .line 184
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    return-void
.end method
