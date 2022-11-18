.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;
.source "TextGraphReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$Command;
    }
.end annotation


# instance fields
.field private blacklist mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private blacklist mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentFilter:Landroid/filterfw/core/Filter;

.field private blacklist mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private blacklist mFactory:Landroid/filterfw/core/FilterFactory;

.field private blacklist mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCurrentFilter(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentGraph(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFactory(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .locals 0

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentFilter(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)V
    .locals 0

    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist applySettings()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, "setting":Ljava/lang/String;
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 454
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "autoBranch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 456
    const-string/jumbo v3, "synced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_1

    .line 458
    :cond_0
    const-string/jumbo v3, "unsynced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 459
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_1

    .line 460
    :cond_1
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_1

    .line 463
    :cond_2
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown autobranch setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_3
    const-string v3, "discardUnconnectedOutputs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 466
    const-class v3, Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 467
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    .line 471
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    goto/16 :goto_0

    .line 469
    .restart local v1    # "setting":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown @setting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private blacklist bindExternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v0    # "value":Ljava/lang/Object;
    nop

    .line 434
    return-void

    .line 430
    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown external variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'! You must add a reference to this external in the host program using addReference(...)!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkReferences()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    .local v1, "reference":Ljava/lang/String;
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    .end local v1    # "reference":Ljava/lang/String;
    goto :goto_0

    .line 444
    .restart local v1    # "reference":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host program specifies reference to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', which is not declared @external in graph file!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    .end local v1    # "reference":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private blacklist executeCommands()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/io/TextGraphReader$Command;

    .line 486
    .local v1, "command":Landroid/filterfw/io/TextGraphReader$Command;
    invoke-interface {v1, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    .line 487
    .end local v1    # "command":Landroid/filterfw/io/TextGraphReader$Command;
    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method

.method private blacklist expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expectedClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 477
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p3, :cond_0

    .line 482
    return-void

    .line 478
    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must have a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 479
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but found a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 480
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist parseString(Ljava/lang/String;)V
    .locals 47
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 170
    move-object/from16 v6, p0

    const-string v0, "@[a-zA-Z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 171
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    const-string v0, "\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 172
    .local v8, "curlyClosePattern":Ljava/util/regex/Pattern;
    const-string v0, "\\{"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 173
    .local v9, "curlyOpenPattern":Ljava/util/regex/Pattern;
    const-string v0, "(\\s+|//[^\\n]*\\n)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 174
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    const-string v0, "[a-zA-Z\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 175
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "[a-zA-Z\\./:]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 176
    .local v12, "libraryNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "\\[[a-zA-Z0-9\\-_]+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 177
    .local v13, "portPattern":Ljava/util/regex/Pattern;
    const-string v14, "=>"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 178
    .local v15, "rightArrowPattern":Ljava/util/regex/Pattern;
    const-string v5, ";"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 179
    .local v4, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "[a-zA-Z0-9\\-_]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 181
    .local v3, "wordPattern":Ljava/util/regex/Pattern;
    const/16 v16, 0x0

    .line 182
    .local v16, "STATE_COMMAND":I
    const/16 v17, 0x1

    .line 183
    .local v17, "STATE_IMPORT_PKG":I
    const/16 v18, 0x2

    .line 184
    .local v18, "STATE_ADD_LIBRARY":I
    const/16 v19, 0x3

    .line 185
    .local v19, "STATE_FILTER_CLASS":I
    const/16 v20, 0x4

    .line 186
    .local v20, "STATE_FILTER_NAME":I
    const/16 v21, 0x5

    .line 187
    .local v21, "STATE_CURLY_OPEN":I
    const/16 v22, 0x6

    .line 188
    .local v22, "STATE_PARAMETERS":I
    const/16 v23, 0x7

    .line 189
    .local v23, "STATE_CURLY_CLOSE":I
    const/16 v24, 0x8

    .line 190
    .local v24, "STATE_SOURCE_FILTERNAME":I
    const/16 v25, 0x9

    .line 191
    .local v25, "STATE_SOURCE_PORT":I
    const/16 v26, 0xa

    .line 192
    .local v26, "STATE_RIGHT_ARROW":I
    const/16 v27, 0xb

    .line 193
    .local v27, "STATE_TARGET_FILTERNAME":I
    const/16 v28, 0xc

    .line 194
    .local v28, "STATE_TARGET_PORT":I
    const/16 v29, 0xd

    .line 195
    .local v29, "STATE_ASSIGNMENT":I
    const/16 v30, 0xe

    .line 196
    .local v30, "STATE_EXTERNAL":I
    const/16 v31, 0xf

    .line 197
    .local v31, "STATE_SETTING":I
    const/16 v32, 0x10

    .line 199
    .local v32, "STATE_SEMICOLON":I
    const/4 v0, 0x0

    .line 200
    .local v0, "state":I
    new-instance v1, Landroid/filterfw/io/PatternScanner;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v10}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 202
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    const/16 v33, 0x0

    .line 203
    .local v33, "curClassName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 204
    .local v34, "curSourceFilterName":Ljava/lang/String;
    const/16 v35, 0x0

    .line 205
    .local v35, "curSourcePortName":Ljava/lang/String;
    const/16 v36, 0x0

    .line 206
    .local v36, "curTargetFilterName":Ljava/lang/String;
    const/16 v37, 0x0

    move-object/from16 v46, v33

    move-object/from16 v33, v10

    move-object/from16 v10, v46

    .line 209
    .local v10, "curClassName":Ljava/lang/String;
    .local v33, "ignorePattern":Ljava/util/regex/Pattern;
    .local v37, "curTargetPortName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v38

    if-nez v38, :cond_7

    .line 210
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    .end local v0    # "state":I
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v1, "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v2, "packageNamePattern":Ljava/util/regex/Pattern;
    .local v3, "curClassName":Ljava/lang/String;
    .local v4, "commandPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .local v41, "state":I
    .local v44, "semicolonPattern":Ljava/util/regex/Pattern;
    goto/16 :goto_1

    .line 331
    .end local v2    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v41    # "state":I
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v0    # "state":I
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v3, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_0
    invoke-virtual {v1, v4, v5}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    const/4 v0, 0x0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_1

    .line 324
    :pswitch_1
    invoke-direct {v6, v1, v4}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    .line 325
    .local v2, "setting":Landroid/filterfw/core/KeyValueMap;
    move/from16 v38, v0

    .end local v0    # "state":I
    .local v38, "state":I
    iget-object v0, v6, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, v2}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 326
    const/16 v0, 0x10

    .line 327
    .end local v38    # "state":I
    .restart local v0    # "state":I
    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_1

    .line 317
    .end local v2    # "setting":Landroid/filterfw/core/KeyValueMap;
    :pswitch_2
    move/from16 v38, v0

    .end local v0    # "state":I
    .restart local v38    # "state":I
    const-string v0, "<external-identifier>"

    invoke-virtual {v1, v3, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "externalName":Ljava/lang/String;
    invoke-direct {v6, v0}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    .line 319
    const/16 v2, 0x10

    .line 320
    .end local v38    # "state":I
    .local v2, "state":I
    move v0, v2

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_1

    .line 310
    .end local v2    # "state":I
    .local v0, "state":I
    :pswitch_3
    move/from16 v38, v0

    .end local v0    # "state":I
    .restart local v38    # "state":I
    invoke-direct {v6, v1, v4}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    .line 311
    .local v0, "assignment":Landroid/filterfw/core/KeyValueMap;
    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 312
    const/16 v2, 0x10

    .line 313
    .end local v38    # "state":I
    .restart local v2    # "state":I
    move v0, v2

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_1

    .line 299
    .end local v2    # "state":I
    .local v0, "state":I
    :pswitch_4
    move/from16 v38, v0

    .end local v0    # "state":I
    .restart local v38    # "state":I
    const-string v0, "[<target-port-name>]"

    invoke-virtual {v1, v13, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "portString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v40, v1

    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .local v40, "scanner":Landroid/filterfw/io/PatternScanner;
    add-int/lit8 v1, v39, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 301
    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v1, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    move/from16 v41, v38

    move-object/from16 v38, v0

    .end local v0    # "portString":Ljava/lang/String;
    .local v38, "portString":Ljava/lang/String;
    .restart local v41    # "state":I
    move-object v0, v1

    move-object/from16 v39, v7

    move-object/from16 v7, v40

    move-object/from16 v40, v11

    move-object v11, v1

    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v39, "commandPattern":Ljava/util/regex/Pattern;
    .local v40, "packageNamePattern":Ljava/util/regex/Pattern;
    move-object/from16 v1, p0

    move-object/from16 v42, v12

    move-object v12, v2

    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v42, "libraryNamePattern":Ljava/util/regex/Pattern;
    move-object/from16 v2, v34

    move-object/from16 v43, v10

    move-object v10, v3

    .end local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .local v43, "curClassName":Ljava/lang/String;
    move-object/from16 v3, v35

    move-object/from16 v44, v4

    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    move-object/from16 v4, v36

    move-object/from16 v45, v5

    move-object/from16 v5, v37

    invoke-direct/range {v0 .. v5}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const/16 v0, 0x10

    .line 306
    .end local v41    # "state":I
    .local v0, "state":I
    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    .line 294
    .end local v38    # "portString":Ljava/lang/String;
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v43    # "curClassName":Ljava/lang/String;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_5
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v43    # "curClassName":Ljava/lang/String;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "<target-filter-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .end local v36    # "curTargetFilterName":Ljava/lang/String;
    .local v0, "curTargetFilterName":Ljava/lang/String;
    const/16 v1, 0xc

    .line 296
    .end local v41    # "state":I
    .local v1, "state":I
    move-object/from16 v36, v0

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    .line 289
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v43    # "curClassName":Ljava/lang/String;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "state":I
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v36    # "curTargetFilterName":Ljava/lang/String;
    :pswitch_6
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v43    # "curClassName":Ljava/lang/String;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v15, v14}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    const/16 v0, 0xb

    .line 291
    .end local v41    # "state":I
    .restart local v0    # "state":I
    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    .line 282
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v43    # "curClassName":Ljava/lang/String;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_7
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v43    # "curClassName":Ljava/lang/String;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "[<source-port-name>]"

    invoke-virtual {v7, v13, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "portString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 284
    .end local v35    # "curSourcePortName":Ljava/lang/String;
    .local v1, "curSourcePortName":Ljava/lang/String;
    const/16 v2, 0xa

    .line 285
    .end local v41    # "state":I
    .restart local v2    # "state":I
    move-object/from16 v35, v1

    move v0, v2

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    .line 277
    .end local v2    # "state":I
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v43    # "curClassName":Ljava/lang/String;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "state":I
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v35    # "curSourcePortName":Ljava/lang/String;
    :pswitch_8
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v43    # "curClassName":Ljava/lang/String;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "<source-filter-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .end local v34    # "curSourceFilterName":Ljava/lang/String;
    .local v0, "curSourceFilterName":Ljava/lang/String;
    const/16 v1, 0x9

    .line 279
    .end local v41    # "state":I
    .local v1, "state":I
    move-object/from16 v34, v0

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    .line 272
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v43    # "curClassName":Ljava/lang/String;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "state":I
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v34    # "curSourceFilterName":Ljava/lang/String;
    :pswitch_9
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v43    # "curClassName":Ljava/lang/String;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v0, "}"

    invoke-virtual {v7, v8, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    .line 274
    .end local v41    # "state":I
    .restart local v0    # "state":I
    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    .line 265
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v43    # "curClassName":Ljava/lang/String;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_a
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v43    # "curClassName":Ljava/lang/String;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    invoke-direct {v6, v7, v8}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    .line 266
    .local v0, "params":Landroid/filterfw/core/KeyValueMap;
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v2, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    invoke-direct {v2, v6, v0}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v1, 0x7

    .line 268
    .end local v41    # "state":I
    .local v1, "state":I
    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    .line 260
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v43    # "curClassName":Ljava/lang/String;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "state":I
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_b
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v43    # "curClassName":Ljava/lang/String;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string/jumbo v0, "{"

    invoke-virtual {v7, v9, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    const/4 v0, 0x6

    .line 262
    .end local v41    # "state":I
    .restart local v0    # "state":I
    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    move-object/from16 v3, v43

    goto/16 :goto_1

    .line 253
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v43    # "curClassName":Ljava/lang/String;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_c
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v43, v10

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object v10, v3

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v3    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v43    # "curClassName":Ljava/lang/String;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "<filter-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "curFilterName":Ljava/lang/String;
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v2, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    move-object/from16 v3, v43

    .end local v43    # "curClassName":Ljava/lang/String;
    .local v3, "curClassName":Ljava/lang/String;
    invoke-direct {v2, v6, v3, v0}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 v1, 0x5

    .line 256
    .end local v41    # "state":I
    .local v1, "state":I
    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    goto/16 :goto_1

    .line 248
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "state":I
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v3, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_d
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v3, "curClassName":Ljava/lang/String;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "<class-name>"

    invoke-virtual {v7, v10, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .end local v3    # "curClassName":Ljava/lang/String;
    .local v0, "curClassName":Ljava/lang/String;
    const/4 v1, 0x4

    .line 250
    .end local v41    # "state":I
    .local v1, "state":I
    move-object v3, v0

    move v0, v1

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    move-object/from16 v1, v42

    goto/16 :goto_1

    .line 241
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "state":I
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v3, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_e
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object/from16 v42, v12

    move-object v7, v1

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    .end local v0    # "state":I
    .end local v1    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v3, "curClassName":Ljava/lang/String;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "<library-name>"

    move-object/from16 v1, v42

    .end local v42    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v1, "libraryNamePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v1, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "libraryName":Ljava/lang/String;
    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v4, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    invoke-direct {v4, v6, v0}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const/16 v2, 0x10

    .line 244
    .end local v41    # "state":I
    .restart local v2    # "state":I
    move v0, v2

    move-object/from16 v4, v39

    move-object/from16 v2, v40

    goto/16 :goto_1

    .line 234
    .end local v2    # "state":I
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "state":I
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v3, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_f
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    .end local v0    # "state":I
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v1, "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v3, "curClassName":Ljava/lang/String;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "<package-name>"

    move-object/from16 v2, v40

    .end local v40    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v2, "packageNamePattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v2, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "packageName":Ljava/lang/String;
    iget-object v4, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v5, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    invoke-direct {v5, v6, v0}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const/16 v4, 0x10

    .line 237
    .end local v41    # "state":I
    .local v4, "state":I
    move v0, v4

    move-object/from16 v4, v39

    goto/16 :goto_1

    .line 212
    .end local v2    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "state":I
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v3, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :pswitch_10
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    move-object/from16 v39, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    .end local v0    # "state":I
    .end local v4    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v1, "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v2    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v3, "curClassName":Ljava/lang/String;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "<command>"

    move-object/from16 v4, v39

    .end local v39    # "commandPattern":Ljava/util/regex/Pattern;
    .local v4, "commandPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v7, v4, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "curCommand":Ljava/lang/String;
    const-string v5, "@import"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    const/4 v5, 0x1

    move v0, v5

    .end local v41    # "state":I
    .local v5, "state":I
    goto/16 :goto_1

    .line 215
    .end local v5    # "state":I
    .restart local v41    # "state":I
    :cond_0
    const-string v5, "@library"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    const/4 v5, 0x2

    move v0, v5

    .end local v41    # "state":I
    .restart local v5    # "state":I
    goto :goto_1

    .line 217
    .end local v5    # "state":I
    .restart local v41    # "state":I
    :cond_1
    const-string v5, "@filter"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    const/4 v5, 0x3

    move v0, v5

    .end local v41    # "state":I
    .restart local v5    # "state":I
    goto :goto_1

    .line 219
    .end local v5    # "state":I
    .restart local v41    # "state":I
    :cond_2
    const-string v5, "@connect"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 220
    const/16 v5, 0x8

    move v0, v5

    .end local v41    # "state":I
    .restart local v5    # "state":I
    goto :goto_1

    .line 221
    .end local v5    # "state":I
    .restart local v41    # "state":I
    :cond_3
    const-string v5, "@set"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 222
    const/16 v5, 0xd

    move v0, v5

    .end local v41    # "state":I
    .restart local v5    # "state":I
    goto :goto_1

    .line 223
    .end local v5    # "state":I
    .restart local v41    # "state":I
    :cond_4
    const-string v5, "@external"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 224
    const/16 v5, 0xe

    move v0, v5

    .end local v41    # "state":I
    .restart local v5    # "state":I
    goto :goto_1

    .line 225
    .end local v5    # "state":I
    .restart local v41    # "state":I
    :cond_5
    const-string v5, "@setting"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 226
    const/16 v5, 0xf

    move v0, v5

    .end local v41    # "state":I
    .restart local v5    # "state":I
    goto :goto_1

    .line 228
    .end local v5    # "state":I
    .restart local v41    # "state":I
    :cond_6
    new-instance v5, Landroid/filterfw/io/GraphIOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown command \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 333
    .end local v41    # "state":I
    .local v0, "state":I
    :goto_1
    move-object v12, v1

    move-object v11, v2

    move-object v1, v7

    move-object/from16 v5, v45

    move-object/from16 v2, p1

    move-object v7, v4

    move-object/from16 v4, v44

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    goto/16 :goto_0

    .line 338
    .end local v2    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v3, "wordPattern":Ljava/util/regex/Pattern;
    .local v4, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "curClassName":Ljava/lang/String;
    .restart local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    :cond_7
    move/from16 v41, v0

    move-object/from16 v44, v4

    move-object v4, v7

    move-object v2, v11

    move-object v7, v1

    move-object v1, v12

    move-object/from16 v46, v10

    move-object v10, v3

    move-object/from16 v3, v46

    .end local v0    # "state":I
    .end local v11    # "packageNamePattern":Ljava/util/regex/Pattern;
    .end local v12    # "libraryNamePattern":Ljava/util/regex/Pattern;
    .local v1, "libraryNamePattern":Ljava/util/regex/Pattern;
    .restart local v2    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v3, "curClassName":Ljava/lang/String;
    .local v4, "commandPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "state":I
    .restart local v44    # "semicolonPattern":Ljava/util/regex/Pattern;
    const/16 v0, 0x10

    move/from16 v5, v41

    .end local v41    # "state":I
    .restart local v5    # "state":I
    if-eq v5, v0, :cond_9

    if-nez v5, :cond_8

    goto :goto_2

    .line 339
    :cond_8
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v11, "Unexpected end of input!"

    invoke-direct {v0, v11}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_9
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .locals 24
    .param p1, "scanner"    # Landroid/filterfw/io/PatternScanner;
    .param p2, "endPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 353
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 354
    .local v1, "STATE_IDENTIFIER":I
    const/4 v2, 0x1

    .line 355
    .local v2, "STATE_EQUALS":I
    const/4 v3, 0x2

    .line 356
    .local v3, "STATE_VALUE":I
    const/4 v4, 0x3

    .line 358
    .local v4, "STATE_POST_VALUE":I
    const-string v5, "="

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 359
    .local v6, "equalsPattern":Ljava/util/regex/Pattern;
    const-string v7, ";"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 360
    .local v8, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v9, "[a-zA-Z]+[a-zA-Z0-9]*"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 361
    .local v9, "wordPattern":Ljava/util/regex/Pattern;
    const-string v10, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 362
    .local v10, "stringPattern":Ljava/util/regex/Pattern;
    const-string v11, "[0-9]+"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 363
    .local v11, "intPattern":Ljava/util/regex/Pattern;
    const-string v12, "[0-9]*\\.[0-9]+f?"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 364
    .local v12, "floatPattern":Ljava/util/regex/Pattern;
    const-string v13, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 365
    .local v13, "referencePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v14, "true|false"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 367
    .local v14, "booleanPattern":Ljava/util/regex/Pattern;
    const/4 v15, 0x0

    .line 368
    .local v15, "state":I
    new-instance v16, Landroid/filterfw/core/KeyValueMap;

    invoke-direct/range {v16 .. v16}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    move-object/from16 v17, v16

    .line 369
    .local v17, "newVals":Landroid/filterfw/core/KeyValueMap;
    const/16 v16, 0x0

    .line 370
    .local v16, "curKey":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v23, v16

    move/from16 v16, v1

    move-object/from16 v1, v23

    .line 372
    .local v1, "curKey":Ljava/lang/String;
    .local v16, "STATE_IDENTIFIER":I
    .local v18, "curValue":Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v19

    if-nez v19, :cond_9

    if-eqz p2, :cond_1

    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    move-result v19

    if-nez v19, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    goto/16 :goto_5

    .line 373
    :cond_1
    :goto_1
    packed-switch v15, :pswitch_data_0

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    .end local v2    # "STATE_EQUALS":I
    .end local v4    # "STATE_POST_VALUE":I
    .end local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v3, "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v19, "STATE_POST_VALUE":I
    .local v20, "STATE_EQUALS":I
    .local v21, "STATE_VALUE":I
    goto/16 :goto_4

    .line 410
    .end local v19    # "STATE_POST_VALUE":I
    .end local v20    # "STATE_EQUALS":I
    .end local v21    # "STATE_VALUE":I
    .restart local v2    # "STATE_EQUALS":I
    .local v3, "STATE_VALUE":I
    .restart local v4    # "STATE_POST_VALUE":I
    .restart local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    :pswitch_0
    invoke-virtual {v0, v8, v7}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    const/4 v15, 0x0

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    goto/16 :goto_4

    .line 385
    :pswitch_1
    invoke-virtual {v0, v10}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v19

    move/from16 v20, v2

    .end local v2    # "STATE_EQUALS":I
    .restart local v20    # "STATE_EQUALS":I
    const/4 v2, 0x1

    if-eqz v19, :cond_2

    .line 386
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v21, v3

    .end local v3    # "STATE_VALUE":I
    .restart local v21    # "STATE_VALUE":I
    add-int/lit8 v3, v19, -0x1

    move/from16 v19, v4

    move-object/from16 v4, v18

    .end local v18    # "curValue":Ljava/lang/String;
    .local v4, "curValue":Ljava/lang/String;
    .restart local v19    # "STATE_POST_VALUE":I
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    .end local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v3, "newVals":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v7

    goto/16 :goto_3

    .line 387
    .end local v19    # "STATE_POST_VALUE":I
    .end local v21    # "STATE_VALUE":I
    .local v3, "STATE_VALUE":I
    .local v4, "STATE_POST_VALUE":I
    .restart local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .restart local v18    # "curValue":Ljava/lang/String;
    :cond_2
    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    .end local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .end local v18    # "curValue":Ljava/lang/String;
    .local v3, "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v4, "curValue":Ljava/lang/String;
    .restart local v19    # "STATE_POST_VALUE":I
    .restart local v21    # "STATE_VALUE":I
    invoke-virtual {v0, v13}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    if-eqz v17, :cond_5

    .line 388
    move-object/from16 v17, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, "refName":Ljava/lang/String;
    move-object/from16 v7, p0

    move-object/from16 v18, v4

    .end local v4    # "curValue":Ljava/lang/String;
    .restart local v18    # "curValue":Ljava/lang/String;
    iget-object v4, v7, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    if-eqz v4, :cond_3

    .line 390
    invoke-virtual {v4, v2}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 391
    :cond_3
    const/4 v4, 0x0

    :goto_2
    nop

    .line 392
    .local v4, "referencedObject":Ljava/lang/Object;
    if-eqz v4, :cond_4

    .line 396
    invoke-virtual {v3, v1, v4}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .end local v2    # "refName":Ljava/lang/String;
    .end local v4    # "referencedObject":Ljava/lang/Object;
    goto :goto_3

    .line 393
    .restart local v2    # "refName":Ljava/lang/String;
    .restart local v4    # "referencedObject":Ljava/lang/Object;
    :cond_4
    new-instance v5, Landroid/filterfw/io/GraphIOException;

    move-object/from16 v22, v4

    .end local v4    # "referencedObject":Ljava/lang/Object;
    .local v22, "referencedObject":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown object reference to \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\'!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 397
    .end local v2    # "refName":Ljava/lang/String;
    .end local v18    # "curValue":Ljava/lang/String;
    .end local v22    # "referencedObject":Ljava/lang/Object;
    .local v4, "curValue":Ljava/lang/String;
    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v17, v7

    .end local v4    # "curValue":Ljava/lang/String;
    .restart local v18    # "curValue":Ljava/lang/String;
    invoke-virtual {v0, v14}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    if-eqz v2, :cond_6

    .line 398
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 399
    :cond_6
    invoke-virtual {v0, v12}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    if-eqz v2, :cond_7

    .line 400
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 401
    :cond_7
    invoke-virtual {v0, v11}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v2

    if-eqz v2, :cond_8

    .line 402
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :goto_3
    const/4 v2, 0x3

    .line 407
    .end local v15    # "state":I
    .local v2, "state":I
    move v15, v2

    goto :goto_4

    .line 404
    .end local v2    # "state":I
    .restart local v15    # "state":I
    :cond_8
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    const-string v4, "<value>"

    invoke-virtual {v0, v4}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    .end local v19    # "STATE_POST_VALUE":I
    .end local v20    # "STATE_EQUALS":I
    .end local v21    # "STATE_VALUE":I
    .local v2, "STATE_EQUALS":I
    .local v3, "STATE_VALUE":I
    .local v4, "STATE_POST_VALUE":I
    .restart local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    :pswitch_2
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    .end local v2    # "STATE_EQUALS":I
    .end local v4    # "STATE_POST_VALUE":I
    .end local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v3, "newVals":Landroid/filterfw/core/KeyValueMap;
    .restart local v19    # "STATE_POST_VALUE":I
    .restart local v20    # "STATE_EQUALS":I
    .restart local v21    # "STATE_VALUE":I
    invoke-virtual {v0, v6, v5}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    const/4 v2, 0x2

    .line 382
    .end local v15    # "state":I
    .local v2, "state":I
    move v15, v2

    goto :goto_4

    .line 375
    .end local v19    # "STATE_POST_VALUE":I
    .end local v20    # "STATE_EQUALS":I
    .end local v21    # "STATE_VALUE":I
    .local v2, "STATE_EQUALS":I
    .local v3, "STATE_VALUE":I
    .restart local v4    # "STATE_POST_VALUE":I
    .restart local v15    # "state":I
    .restart local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    :pswitch_3
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    .end local v2    # "STATE_EQUALS":I
    .end local v4    # "STATE_POST_VALUE":I
    .end local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v3, "newVals":Landroid/filterfw/core/KeyValueMap;
    .restart local v19    # "STATE_POST_VALUE":I
    .restart local v20    # "STATE_EQUALS":I
    .restart local v21    # "STATE_VALUE":I
    const-string v2, "<identifier>"

    invoke-virtual {v0, v9, v2}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 376
    const/4 v2, 0x1

    .line 377
    .end local v15    # "state":I
    .local v2, "state":I
    move v15, v2

    .line 412
    .end local v2    # "state":I
    .restart local v15    # "state":I
    :goto_4
    move-object/from16 v7, v17

    move/from16 v4, v19

    move/from16 v2, v20

    move-object/from16 v17, v3

    move/from16 v3, v21

    goto/16 :goto_0

    .line 372
    .end local v19    # "STATE_POST_VALUE":I
    .end local v20    # "STATE_EQUALS":I
    .end local v21    # "STATE_VALUE":I
    .local v2, "STATE_EQUALS":I
    .local v3, "STATE_VALUE":I
    .restart local v4    # "STATE_POST_VALUE":I
    .restart local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    :cond_9
    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v19, v4

    move-object/from16 v3, v17

    .line 417
    .end local v2    # "STATE_EQUALS":I
    .end local v4    # "STATE_POST_VALUE":I
    .end local v17    # "newVals":Landroid/filterfw/core/KeyValueMap;
    .local v3, "newVals":Landroid/filterfw/core/KeyValueMap;
    .restart local v19    # "STATE_POST_VALUE":I
    .restart local v20    # "STATE_EQUALS":I
    .restart local v21    # "STATE_VALUE":I
    :goto_5
    if-eqz v15, :cond_b

    const/4 v2, 0x3

    if-ne v15, v2, :cond_a

    goto :goto_6

    .line 418
    :cond_a
    new-instance v2, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected end of assignments on line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    :cond_b
    :goto_6
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist reset()V
    .locals 1

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 162
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    .line 163
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    .line 165
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 166
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    .line 167
    return-void
.end method


# virtual methods
.method public blacklist readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .locals 1
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/filterfw/core/FilterGraph;

    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    .line 150
    .local v0, "result":Landroid/filterfw/core/FilterGraph;
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 151
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 152
    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    .line 154
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    .line 155
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 157
    return-object v0
.end method

.method public blacklist readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .locals 3
    .param p1, "assignments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 345
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 346
    .local v0, "ignorePattern":Ljava/util/regex/Pattern;
    new-instance v1, Landroid/filterfw/io/PatternScanner;

    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 347
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    return-object v2
.end method
