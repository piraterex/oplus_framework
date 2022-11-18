.class public Landroid/view/inspector/PropertyMapper$PropertyConflictException;
.super Ljava/lang/RuntimeException;
.source "PropertyMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inspector/PropertyMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertyConflictException"
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newPropertyType"    # Ljava/lang/String;
    .param p3, "existingPropertyType"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const-string v1, "Attempted to map property \"%s\" as type %s, but it is already mapped as %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 199
    return-void
.end method
